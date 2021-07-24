window.onload = function() {
  $('#number-of-apartments').show();
  $('#number-of-floors').show();
  $('#number-of-basements').show();
  $('#number-of-companies').hide();
  $('#number-of-parking-spots').hide();
  $('#number-of-elevators').hide();
  $('#number-of-corporations').hide();
  $('#maximum-occupancy').hide();
  $('#business-hours').hide();
};

$("#residential").change(function() {
      ($(this).is(':checked'))
      $('#number-of-apartments').show();
      $('#number-of-floors').show();
      $('#number-of-basements').show();
      $('#number-of-companies').hide();
      $('#number-of-parking-spots').hide();
      $('#number-of-elevators').hide();
      $('#number-of-corporations').hide();
      $('#maximum-occupancy').hide();
      $('#business-hours').hide();
  });
$("#residential").trigger("change");

$("#commercial").change(function() {
      ($(this).is(':checked'))
      $('#number-of-apartments').hide();
      $('#number-of-floors').show();
      $('#number-of-basements').show();
      $('#number-of-companies').show();
      $('#number-of-parking-spots').show();
      $('#number-of-elevators').show();
      $('#number-of-corporations').hide();
      $('#maximum-occupancy').hide();
      $('#business-hours').hide();
}); 

$("#commercial").trigger("change");

$("#corporate").change(function() {
      ($(this).is(':checked'))
      $('#number-of-apartments').hide();
      $('#number-of-floors').show();
      $('#number-of-basements').show();
      $('#number-of-companies').hide();
      $('#number-of-parking-spots').show();
      $('#number-of-elevators').hide();
      $('#number-of-corporations').show();
      $('#maximum-occupancy').show();
      $('#business-hours').hide();
});

$("#corporate").trigger("change");

$("#hybrid").change(function() {
      ($(this).is(':checked')) 
  $('#number-of-apartments').hide();
  $('#number-of-floors').show();
  $('#number-of-basements').show();
  $('#number-of-companies').show();
  $('#number-of-parking-spots').show();
  $('#number-of-elevators').hide();
  $('#number-of-corporations').hide();
  $('#maximum-occupancy').show();
  $('#business-hours').show();
});

$("#hybrid").trigger("change");



function elevatorCalc() {
      const floors = document.getElementById("input_number-of-floors");
      if (document.getElementById("commercial").checked == true) {
        commercial(); 
      } else if (document.getElementById("residential").checked == true && parseInt(floors.value) <= 20) {
        residential();
      } else if (document.getElementById("residential").checked == true && parseInt(floors.value) > 20) {
        residential20();
      } else if (document.getElementById("corporate").checked == true) {
        corpo();
      } else if (document.getElementById("hybrid").checked == true) {
        hybrid();
      }   
}

function commercial() {
      const elevators = document.getElementById("input_number-of-elevators");
      const liftCages = elevators.value;
      document.getElementById('output_elevator-amount').value = liftCages;
}

function residential() {
      const floors = document.getElementById("input_number-of-floors");
      const apartments = document.getElementById("input_number-of-apartments");
       doorsPerFloor = apartments.value / floors.value;
       liftCages = doorsPerFloor / 6;
      document.getElementById("output_elevator-amount").value = Math.ceil(Number(liftCages));
}

function residential20() {
      const floors = document.getElementById("input_number-of-floors");
      const apartments = document.getElementById("input_number-of-apartments");
      doorsPerFloor = apartments.value / floors.value;
      liftColumns = floors.value / 20;
      liftCages = doorsPerFloor / 6;
      totalCages = Math.ceil(liftCages) * Math.ceil(liftColumns);
      document.getElementById("output_elevator-amount").value = Number(totalCages);
}

function hybrid() {
      const occupants = document.getElementById("input_maximum-occupancy");
      const floors = document.getElementById("input_number-of-floors");
      const basements = document.getElementById("input_number-of-basements");
      totalFloors = parseInt(floors.value) + parseInt(basements.value);
      totalOccupants = occupants.value * totalFloors;
      elevators = (totalOccupants / 1000);
      elevatorColumns = totalFloors / 20;
      elevatorsPerColumn = Math.floor(elevators) / Math.ceil(elevatorColumns);
      totalElevators = Math.ceil(elevatorsPerColumn) * Math.ceil(elevatorColumns);
      document.getElementById("output_elevator-amount").value = parseInt(totalElevators);
}

function corpo() {
      const occupants = document.getElementById("input_maximum-occupancy");
      const floors = document.getElementById("input_number-of-floors");
      const basements = document.getElementById("input_number-of-basements");
      totalFloors = parseInt(floors.value) + parseInt(basements.value);
      totalOccupants = occupants.value * totalFloors;
      elevators = totalOccupants / 1000;
      elevatorColumns = totalFloors / 20;
      elevatorsPerColumn = Math.floor(elevators) / Math.ceil(elevatorColumns);
      totalElevators = Math.ceil(elevatorsPerColumn) * Math.ceil(elevatorColumns);
      document.getElementById("output_elevator-amount").value = parseInt(totalElevators);
}

function serviceCalc() {
      if (document.getElementById("standard").checked == true) {
        standard();
      } else if (document.getElementById("premium").checked == true) {
        premium();
      } else if (document.getElementById("excelium").checked == true) {
        excelium();
      }
}

function standard() {
      let elevatorAmt = document.getElementById('output_elevator-amount');
      console.log(elevatorAmt);
      let unitPrice = 7565;
      console.log(unitPrice);
      let installFee = (unitPrice * parseInt(elevatorAmt.value)) * 0.1;
      console.log(installFee);
      let elevatorTotal = unitPrice * parseInt(elevatorAmt.value);
      console.log(elevatorTotal);
      let finalPrice = elevatorTotal + installFee;
      console.log(finalPrice);
      document.getElementById('output_elevator-unit-price').value = "$" + Number(unitPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_installation-fees').value = "$" + Number(installFee).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_elevator-total-price').value = "$" + Number(elevatorTotal).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_final-price').value = "$" + Number(finalPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
}

function premium() {
      let elevatorAmt = document.getElementById('output_elevator-amount');
      let unitPrice = 12345;
      let installFee = (unitPrice * parseInt(elevatorAmt.value)) * 0.13;
      let elevatorTotal = unitPrice * parseInt(elevatorAmt.value);
      let finalPrice = elevatorTotal + installFee;
      document.getElementById('output_elevator-unit-price').value = "$" + Number(unitPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_installation-fees').value = "$" + Number(installFee).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_elevator-total-price').value = "$" + Number(elevatorTotal).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
      document.getElementById('output_final-price').value = "$" + Number(finalPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
}

function excelium() {
    let elevatorAmt = document.getElementById('output_elevator-amount');
    let unitPrice = 15400;
    let installFee = (unitPrice * parseInt(elevatorAmt.value)) * 0.16;
    let elevatorTotal = unitPrice * parseInt(elevatorAmt.value);
    let finalPrice = elevatorTotal + installFee;
    document.getElementById('output_elevator-unit-price').value = "$" + Number(unitPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
    document.getElementById('output_installation-fees').value = "$" + Number(installFee).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
    document.getElementById('output_elevator-total-price').value = "$" + Number(elevatorTotal).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
    document.getElementById('output_final-price').value = "$" + Number(finalPrice).toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
}

