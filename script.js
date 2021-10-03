window.addEventListener('DOMContentLoaded', () => {
    const button = document.getElementById("button");
    button.onclick = function calc() {

        const cost = document.getElementById('cost').value;
        const number = document.getElementById('number').value;
        const res = document.getElementById('result');

        if (parseInt(cost) * parseInt(number) > 0)
            res.innerHTML = `Итоговая стоимость: ${parseInt(cost) * parseInt(number)}`;
        else
            res.innerHTML = `Ошибка! Попробуйте снова.`;
        return false;
    }
});