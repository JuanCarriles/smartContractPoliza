pragma solidity ^0.5.0;

contract PolizaCar {
 
   uint public numeroPoliza;
   string public fechaContratacion; 
   string public fechaVencimiento;
   string public tipoDocumento;
   string public documentCliente;
   string public nombreCliente;
   string public matriculaVehiculo;

   event nuevaPoliza(uint numeroPoliza, string fechaContratacion, string fechaVencimiento, string tipoDocumento, string documentCliente, string nombreCliente, uint matriculaVehiculo);

    struct Poliza{
      uint numeroPoliza;
      string fechaContratacion;
      string fechaVencimiento;
      string tipoDocumento;
      string documentCliente;
      string nombreCliente;
      string matriculaVehiculo;
    }
    
    constructor(uint numPol, string memory fechaCon, string memory fechaVen, string memory tipoDoc, string memory documentCli, string memory nombreCli, string memory matriculaVehi) public {
      numeroPoliza = numPol;
      fechaContratacion  = fechaCon;
      fechaVencimiento = fechaVen;
      tipoDocumento = tipoDoc;
      documentCliente = documentCli;
      nombreCliente = nombreCli;
      matriculaVehiculo = matriculaVehi;
   }
    

    function set(uint num, string memory fechaC, string memory fechaV, string memory   tipoD, string  memory documentC, string memory nombreC, uint matriculaV) public {
    
      emit nuevaPoliza(num, fechaC, fechaV, tipoD, documentC, nombreC, matriculaV);
      
    }

    function getNumeroPoliza() public view returns (uint retNum) {
      return numeroPoliza;
   }
    function getFechaContratacion() public view returns (string memory retFechC) {
       return fechaContratacion;
    }
    
    function getFechaVencimiento() public view returns (string memory retFechV) {
       return fechaVencimiento;
    }
    
    function getTipoDocumento() public view returns (string memory retTipoDoc) {
       return tipoDocumento;
    }

    function getDocumentoCliente() public view returns (string memory retNom) {
      return documentCliente;
    } 
    
    function getNombre() public view returns (string memory retNombre) {
       return nombreCliente;
    }

    function getMatricula() public view returns (string memory retMat) {
       return matriculaVehiculo;
    }


}
