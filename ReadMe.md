[![Telegram](https://img.shields.io/badge/Telegram-@TeaTechnology-26A5E4?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/TeaTechnology)
[![GitHub](https://img.shields.io/badge/GitHub-MichiTheCat--RedStar-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/MichiTheCat-RedStar)
[![Itch.io](https://img.shields.io/badge/Itch.io-michi--the--cat-FA5C5C?style=for-the-badge&logo=itch.io&logoColor=white)](https://michi-the-cat.itch.io)

---

[click for english](#english)
<a id="russian"></a>

# RU | Русский:

**teaOGL (расшифровывается как tea Ollama GGUF Loader) - это инструмент для автоматической загрузки GGUF (*.gguf) файлов в Ollama!**

Больше не нужно разбираться как работает Modelfile и как его загрузить в Ollama - теперь достаточно пары простых шагов:

##### 1. Убедитесь, что у вас вообще установлена Ollama, для этого пропишите в терминале:

```bash
ollama --version
```

Если возникла ошибка, то [посетите сайт Ollama](https://ollama.com) и скачайте её, перепроверьте появилась ли она

##### 2. Скачайте teaOGL для своей архитектуры:

Для этого перейдите в папку [`bin/`](bin/) или [releases](#TODO) на GitHub и скачайте нужную Вам!

##### 3. Скачайте GGUF модель:

Скачать GGUF модель можно любым удобным способом, например на [Hugging Face](https://huggingface.co/models)

##### 4. Использовать teaOGL для загрузки GGUF в Ollama:

Теперь просто запустите исполняемый файл и введите в нём запрашиваемые данные...

**Но!** Есть способ удобнее, можно просто прописать в терминале где находится исполняемый файл:

```bash
teaOGL <имя модели> <путь до GGUF>	# "teaOGL" может отличаться, в зависимости от того, что вы скачали, но можно переименовать
```

##### 5. Удобство!

Так же, чтобы не зависеть от того, что нужно находиться в одной папке с файлом, можно добавить файл в PATH:

**Linux:**

```bash
chmod +x teaOGL
echo 'export PATH=$PATH:путь/до/teaOGL' >> ~/.bashrc
source ~/.bashrc
```

**Windows** (но только на один раз)**:**

```cmd
set PATH=%PATH%;teaOGL.exe
```

**Универсальный powershell:**

```powershell
[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";teaOGL", "User")
```

##### 6. Итог:

Теперь вы можете прописать:

```bash
ollama list
```

И увидите, что ваша модель была добавлена в Ollama!

---

[нажми для русского](#russian)
<a id="english"></a>

# EN | English:

**teaOGL (stands for tea Ollama GGUF Loader) is a tool for automatically loading GGUF (*.gguf) files into Ollama!**

No more fussing with how Modelfile works or how to load it into Ollama – now it takes just a couple of simple steps:

##### 1. Make sure you have Ollama installed. To check, run in your terminal:

```bash
ollama --version
```

If you get an error, visit [the Ollama website](https://ollama.com) and download it, then verify it’s installed.

##### 2. Download teaOGL for your architecture:

Go to the [`bin/`](bin/) folder or [releases](#TODO) on GitHub and download the one you need!

##### 3. Download a GGUF model:

You can download a GGUF model any way you like, for example from [Hugging Face](https://huggingface.co/models).

##### 4. Use teaOGL to load the GGUF into Ollama:

Simply run the executable and enter the requested information when prompted…

**But!** There is an even easier way: just run the executable from the terminal with the following arguments:

```bash
teaOGL <model name> <path to GGUF>	# "teaOGL" may differ depending on what you downloaded, but you can rename it
```

##### 5. Convenience!

To avoid having to be in the same folder as the file, you can add it to your PATH:

**Linux:**

```bash
chmod +x teaOGL
echo 'export PATH=$PATH:path/to/teaOGL' >> ~/.bashrc
source ~/.bashrc
```

**Windows** (but only for the current session)**:**

```cmd
set PATH=%PATH%;teaOGL.exe
```

**Universal PowerShell:**

```powershell
[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";teaOGL", "User")
```

##### 6. Result:

Now you can run:

```bash
ollama list
```

And you’ll see that your model has been added to Ollama!

---

[*MichiTheCat-RedStar · © 2026 · MIT*](License.txt)