<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\Paciente;
use App\pacienteAnalisis;
use App\Quimica;
use App\QuimicaResultado;

class QuimicaController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		return view('dashboard.views.quimica.index');
	}

    public function crear($paciente_id){

        $paciente = Paciente::find($paciente_id);
        $quimica = new Quimica;
        $pacienteAnalisis = new PacienteAnalisis;
        $quimica->accion = "Crear";
        $quimica->medico = "";

        return view('dashboard.views.quimica.crear', compact('quimica', 'paciente', 'pacienteAnalisis'));
    }

    public function guardar(Request $request){

        $qr = new \stdClass;
        $qr->r = $request->resultados;
        $qr->v = $request->valores;

        dd($qr); 
        
        if ($request->id == "") {
            $quimica = new Quimica;
            $pacienteAnalisis = new PacienteAnalisis;
        }else{
            $quimica = Quimica::find($request->id);
            $pacienteAnalisis = PacienteAnalisis::where('analisis', 'quimica')->where('analisis_id', $request->id)->first();
            $this->elimarValores($quimica->id);
            // return $this->elimarValores($quimica->id);;
        }

        $this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'required|max:150', 
                                    'tipo_analisis' => 'required|max:150']);

        // Guardar analisis
        $quimica->save();

        // Guardar relacion con el paciente.
        $pacienteAnalisis->paciente_id = $request->paciente_id;
        $pacienteAnalisis->medico = $request->medico;
        $pacienteAnalisis->analisis = $request->tipo_analisis;
        $pacienteAnalisis->analisis_id = $quimica->id;
        $pacienteAnalisis->save();
        // return count($request->resultado);
        // Guardar resultados del paciente
        for($i = 0; $i < count($qr); $i++)
        {
            $quimicaResultado = new QuimicaResultado;
            $quimicaResultado->resultado = $qr->r[$i];
            $quimicaResultado->valor_examen_id =$qr->v[$i];
            $quimicaResultado->quimica_id = $quimica->id;
            $quimicaResultado->save();
        }

        return redirect()->route('quimicaEditar', $pacienteAnalisis->id);
    }

    public function editar($analisis_id){
        
        $pacienteAnalisis = PacienteAnalisis::find($analisis_id);
        $paciente = Paciente::find($pacienteAnalisis->paciente_id);

        $quimica = Quimica::find($pacienteAnalisis->analisis_id);
        $quimica->accion = "Editar";
        $quimica->imprimir = true;
        $quimica->medico = $pacienteAnalisis->medico;

        return view('dashboard.views.quimica.crear', compact('quimica', 'paciente', 'pacienteAnalisis'));
    }

    private function elimarValores($id){

        $valores = QuimicaResultado::where('quimica_id', $id)->get();

        foreach ($valores as $valor) {
            $valor->delete();
        }

        // return "ready";
    }



}