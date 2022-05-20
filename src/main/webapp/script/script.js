let rowCell = document.getElementsByClassName("row-cell");
for (let element in rowCell) {
    rowCell[element].addEventListener("click", () => {

        let data = rowCell[element].innerText.split("\t")
        console.log(data)
        let idEvent = document.getElementById("idEvent")

        let numSalle = document.getElementById("numSalle")
        let numBloc = document.getElementById("numBloc")
        let idReservataire = document.getElementById("idReservataire")
        let eventName = document.getElementById("eventName")
        let eventDate = document.getElementById("eventDate")
        eventDate.value = data[5].split(' ')[0]
        let input = [idEvent, idReservataire, numSalle, numBloc, eventName]
        for (let i in input) {
            input[i].value = data[i]
        }
        location.href = "#formInput";
    });
}
