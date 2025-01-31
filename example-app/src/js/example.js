import { TextConverter } from 'text-converter';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    TextConverter.echo({ value: inputValue })
}
