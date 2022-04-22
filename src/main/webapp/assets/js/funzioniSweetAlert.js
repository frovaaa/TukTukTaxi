function Timer(timeInMs) {
    let timerInterval
    Swal.fire({
        title: 'Auto close alert!',
        html: 'I will close in <b></b> milliseconds.',
        timer: timeInMs,
        timerProgressBar: true,
        didOpen: () => {
            Swal.showLoading()
            const b = Swal.getHtmlContainer().querySelector('b')
            timerInterval = setInterval(() => {
                b.textContent = Swal.getTimerLeft()
            }, 100)
        },
        willClose: () => {
            clearInterval(timerInterval)
        }
    }).then((result) => {
        /* Read more about handling dismissals below */
        if (result.dismiss === Swal.DismissReason.timer) {
            console.log('I was closed by the timer')
        }
    })
}
function Question(title, text, confirmText, cancelText){
    Swal.fire({
        title: title,
        text: text,
        icon: 'question',
        iconHtml: '?',
        confirmButtonText: confirmText,
        cancelButtonText: cancelText,
        showCancelButton: true,
        showCloseButton: true
    })
}
function Message(title, text, icon){
    Swal.fire({
        title: title,
        text: text,
        icon: icon,
    })
/*Types
success
error
warning
info
question
 */
}