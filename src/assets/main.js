const table = document.querySelector("table")

table.addEventListener("click", (e) => {
    const ID = e.target.parentNode.parentNode.getAttribute("data-id")
    const parentElem = e.target.parentNode.parentNode
    const className = e.target.className

    switch (className) {
        case "increase":
            const debouncedIncreaseProduct = debounce(increaseProduct, 250)
            debouncedIncreaseProduct(ID, parentElem)
            break
        case "decrease":
            const debouncedDecreaseProduct = debounce(decreaseProduct, 250)
            debouncedDecreaseProduct(ID, parentElem)
            break
        case "hide":
            const debouncedHideProduct = debounce(hideProduct, 250)
            debouncedHideProduct(ID)
            break
        default:
            break
    }
})

function increaseProduct(id, parentElem) {
    const count = parentElem.querySelector(".quantity span")
    const quantity = (count.textContent = Number(count.textContent) + 1)
    messageToHandler("handlers/update_quantity.php", {id: id, quantity: quantity})
}

function decreaseProduct(id, parentElem) {
    const count = parentElem.querySelector(".quantity span")
    const quantity = (count.textContent = Number(count.textContent) - 1)
    messageToHandler("handlers/update_quantity.php", {id: id, quantity: quantity})
}

function hideProduct(id) {
    const tbody = table.querySelector("tbody")
    let nodeList = Array.from(tbody.querySelectorAll("tr"))

    nodeList = nodeList.filter((elem) => elem.getAttribute("data-id") != id)

    tbody.innerHTML = ""
    tbody.append(...nodeList)

    messageToHandler("handlers/hide_product.php", {id: id})
}

async function messageToHandler(url, data) {
    const res = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    })

    console.log(res.status, res.statusText)
}

function debounce(callee, timeoutMs) {
    return function perform(...args) {
        let previousCall = this.lastCall

        this.lastCall = Date.now()

        if (previousCall && this.lastCall - previousCall <= timeoutMs) {
            clearTimeout(this.lastCallTimer)
        }

        this.lastCallTimer = setTimeout(() => callee(...args), timeoutMs)
    }
}
