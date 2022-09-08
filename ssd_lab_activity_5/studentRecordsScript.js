
function addData(){
    var rollno = document.getElementById("rollnoRecord").value;
    var name = document.getElementById("nameRecord").value;

    var table = document.getElementById("dataEntryTable");

    var row = table.insertRow(table.rows.length);

    var rollnoData = row.insertCell(0);
    var nameData = row.insertCell(1);

    rollnoData.innerHTML = rollno;
    nameData.innerHTML = name;
}

function deleteData(){
    var table = document.getElementById("dataEntryTable");
    table.deleteRow(table.rows.length-1);
}