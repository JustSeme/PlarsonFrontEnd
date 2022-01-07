function doAfterAndBeforeDOMContentLoaded(cb) {
    document.addEventListener('readystatechange', () => {
        if(document.readyState === 'interactive') {
            cb();
            document.addEventListener('DOMContentLoaded', () => {
                cb()
            })
        }
    })
}

const speakFunc = () => {
    console.log('Hello, world')
}

doAfterAndBeforeDOMContentLoaded(speakFunc)

document.addEventListener('DOMContentLoaded', () => {
    alert('DOM loaded!')
})