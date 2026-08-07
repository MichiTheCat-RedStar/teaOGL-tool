#   teaOGL // ☭
# MichiTheCat-RedStar (c) 2026

from std/os import commandLineParams, removeFile
from std/rdstdin import readLineFromStdin
from std/strutils import strip
from std/osproc import execCmd


proc gguf_to_ollama(model_name: string, gguf_path: string): void =
  let text = "FROM " & gguf_path # TODO для будущей валидации (try/except)
  writeFile("Modelfile", text)
  discard execCmd("ollama create " & model_name & " -f ./Modelfile") # TODO убрать discard для отлавливания ошибок
  removeFile("Modelfile")


let args = commandLineParams() # аргументы
var # var, так как в задаётся далее
  name: string # будущее имя модели в Ollama
  gguf: string # путь до gguf файла

if args.len > 0: # Проверка аргументов, иначе запуск интерактивного режима
  name = args[0]
  gguf = args[1] # TODO при добавлении try/except проверять наличие двух аргументов
  gguf_to_ollama(name, gguf)
else:
  echo "teaOGL - MichiTheCat-RedStar (c) 2026"
  name = readLineFromStdin("Model Name: ").strip()
  gguf = readLineFromStdin("Path to GGUF: ").strip()
  gguf_to_ollama(name, gguf)


# --- TEST ---
#[ echo args
echo name
echo gguf ]#

# По результату теста могу сказать, что всё работает, публикую как v1.0a!
# Осталось добавить проверку ошибок и поменять документацию под актуальные реали...
