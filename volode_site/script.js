let memory = JSON.parse(localStorage.getItem("memory")) || {
    weakTopics: []
};

function saveMemory() {
    localStorage.setItem("memory", JSON.stringify(memory));
}

function addMessage(text, type) {
    const chat = document.getElementById("chat");
    const div = document.createElement("div");
    div.className = "message " + type;
    div.innerText = text;
    chat.appendChild(div);
    chat.scrollTop = chat.scrollHeight;
}

function send() {
    const input = document.getElementById("input");
    const text = input.value;
    input.value = "";

    addMessage(text, "user");

    if (text.toLowerCase().includes("kvíz")) {
        generateQuiz();
        return;
    }

    fetch("http://volode.server:11434/api/generate", {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
            model: "llama3",
            prompt: `
Uživatel má problémy s: ${memory.weakTopics.join(", ")}
Odpověz jednoduše:
${text}
`,
            stream: false
        })
    })
    .then(res => res.json())
    .then(data => {
        addMessage(data.response, "ai");
    })
    .catch(() => {
        addMessage("Chyba připojení k AI", "ai");
    });
}

function generateQuiz() {
    const chat = document.getElementById("chat");

    const question = document.createElement("div");
    question.className = "message ai";
    question.innerText = "Co je 2 + 2 ?";
    chat.appendChild(question);

    ["3","4","5","6"].forEach(option => {
        const btn = document.createElement("div");
        btn.className = "quiz-option";
        btn.innerText = option;

        btn.onclick = () => {
            if (option === "4") {
                btn.classList.add("correct");
            } else {
                btn.classList.add("wrong");
                memory.weakTopics.push("základy matematiky");
                saveMemory();
            }
        };

        chat.appendChild(btn);
    });
}

function newChat() {
    document.getElementById("chat").innerHTML = "";
}

function changeTheme(theme) {
    document.body.className = theme;
}
