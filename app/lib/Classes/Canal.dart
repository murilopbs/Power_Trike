class Canal{
  double? _amplitudeD;
  double? _largura_pulsoD;
  double? _angulo_partidaD;
  double? _angulo_finalD;
  double? _frequenciaD;

  double? _amplitudeE;
  double? _largura_pulsoE;
  double? _angulo_partidaE;
  double? _angulo_finalE;
  double? _frequenciaE;

  bool _ligadoD = false;
  bool _ligadoE = false;

  int _modoOperacao = 0;

  int getModoOperacao(){
    return _modoOperacao;
  }

  void setModoOperacao(int valor){
    _modoOperacao = valor;
  }

  bool getLigadoD(){
    return _ligadoD;
  }

  void setLigadoD(bool valor){
    _ligadoD = valor;
  }

  bool getLigadoE(){
    return _ligadoE;
  }

  void setLigadoE(bool valor){
    _ligadoE = valor;
  }

  double getAmplitudeD(){
    if(_amplitudeD == null){
      return 0;
    }
    return _amplitudeD!;
  }
  double getAmplitudeE(){
    if(_amplitudeE == null){
      return 0;
    }
    return _amplitudeE!;
  }
  double getLarguraD(){
    if(_largura_pulsoD == null){
      return 0;
    }
    return _largura_pulsoD!;
  }
  double getLarguraE(){
    if(_largura_pulsoE == null){
      return 0;
    }
    return _largura_pulsoE!;
  }
  double getAnguloPartidaD(){
    if(_angulo_partidaD == null){
      return 0;
    }
    return _angulo_partidaD!;
  }
  double getAnguloPartidaE(){
    if(_angulo_partidaE == null){
      return 0;
    }
    return _angulo_partidaE!;
  }
  double getAnguloFinalD(){
    if(_angulo_finalD == null){
      return 0;
    }
    return _angulo_finalD!;
  }
  double getAnguloFinalE(){
    if(_angulo_finalE == null){
      return 0;
    }
    return _angulo_finalE!;
  }
  double getFrequenciaD(){
    if(_frequenciaD == null){
      return 0;
    }
    return _frequenciaD!;
  }
  double getFrequenciaE(){
    if(_frequenciaE == null){
      return 0;
    }
    return _frequenciaE!;
  }
  void setAmplitudeD(double valor){
    _amplitudeD = valor;
  }
  void setAmplitudeE(double valor){
    _amplitudeE = valor;
  }
  void setLarguraD(double valor){
    _largura_pulsoD = valor;
  }
  void setLarguraE(double valor){
    _largura_pulsoE = valor;
  }
  void setAnguloPartidaD(double valor){
    _angulo_partidaD = valor;
  }
  void setAnguloPartidaE(double valor){
    _angulo_partidaE = valor;
  }
  void setAnguloFinalD(double valor){
    _angulo_finalD = valor;
  }
  void setAnguloFinalE(double valor){
    _angulo_finalE = valor;
  }
  void setFrequenciaD(double valor){
    _frequenciaD = valor;
  }
  void setFrequenciaE(double valor){
    _frequenciaE = valor;
  }
}