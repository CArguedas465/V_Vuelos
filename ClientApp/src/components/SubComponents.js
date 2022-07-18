import React, { Component } from 'react';
import { NavMenu } from './NavMenu'
import { General,
         Aerolineas, 
         AerolineasPais, 
         BitacoraErrores, 
         BitacoraEventos, 
         Consecutivos, 
         CrearUsuario, 
         Paises, 
         Puertas, 
         PuertasActivas, 
         VerUsuarios} 
         from './subcomponents/subs'

export class SubComponents extends Component {
  static displayName = SubComponents.name;

  constructor(props){
    super(props);

    this.stateChange = props.stateChange;

    this.state = {
      currentPage : props.currentPage, 
      currentSubPage : props.currentSubPage,
      userType : props.userType
    }
  }

  componentDidUpdate(prevProps){
    if (prevProps.currentPage !== this.props.currentPage ||
        prevProps.currentSubPage !== this.props.currentSubPage) {
      this.setState({currentPage : this.props.currentPage, currentSubPage : this.props.currentSubPage});
    }
  }

  render () {
    console.log("Rendering::SubComponents");
    console.log("Data at SUBCOMPONENTS level::", this.state.currentPage, this.state.currentSubPage); 

    let componenteARenderizar;

    switch(this.state.currentSubPage){
      case "General":
        componenteARenderizar = <General/>
        break;
      case "Crear Usuario":
        componenteARenderizar = <CrearUsuario/>
        break;
      case "Ver Usuarios":
        componenteARenderizar = <VerUsuarios/>
        break;
      case "Consecutivos":
        componenteARenderizar = <Consecutivos/>
        break;
      case "Países":
        componenteARenderizar = <Paises/>
        break;
      case "Aerolíneas":
        componenteARenderizar = <Aerolineas/>
        break;
      case "Puertas":
        componenteARenderizar = <Puertas/>
        break;
      case "Bitácora Eventos":
        componenteARenderizar = <BitacoraEventos/>
        break; 
      case "Bitácora Errores":
        componenteARenderizar = <BitacoraErrores/>
        break; 
      case "Aerolíneas por país":
        componenteARenderizar = <AerolineasPais/>
        break; 
      case "Puertas activas": 
        componenteARenderizar = <PuertasActivas/>
        break;
      default: 
        break;
    }

    return (
      <div>
        <NavMenu stateChange = {this.stateChange} currentPage = {this.state.currentPage} currentSubPage = {this.state.currentSubPage} userType = {this.state.userType}/>
        {componenteARenderizar}
      </div>
    );
  }
}