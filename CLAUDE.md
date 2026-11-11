# FREMEX · Estúdio de edição

Este repositório é o estúdio de edição de vídeo da FREMEX. As habilidades ficam em `.claude/skills/`. O ponto de entrada é a skill `editar`: o usuário manda o vídeo e diz como quer.

## Quando o usuário está no celular (sessão na nuvem)

Muitas sessões começam pelo aplicativo do Claude no celular. Nelas:

- **Arquivos do usuário** chegam como anexos da conversa. Localize o arquivo enviado e **copie** para `projeto-<nome>/brutos/` antes de trabalhar. Nunca altere o original.
- **Links:** se o usuário mandar um link (Drive, YouTube, Instagram), tente baixar. Se a rede da sessão bloquear o endereço, explique e peça para ele enviar o arquivo direto pelo app.
- **Entrega:** mande o resultado para o celular com a ferramenta de envio de arquivos da sessão. Envie **o vídeo final e a capa**, não os arquivos intermediários. Use uma legenda curta no envio.
- **Prévia antes do final:** antes de exportar, mande uma folha de quadros (imagem) para o usuário aprovar pelo celular. Ela é leve e abre rápido.
- **Respostas curtas:** a pessoa está lendo numa tela pequena. Use listas curtas e no máximo três perguntas por vez.
- **Nada fica salvo na sessão:** a máquina na nuvem é apagada depois de um tempo. Entregue tudo o que importa pelo envio de arquivos ou pelo Google Drive (skill `entrega`).

## Ambiente na nuvem

O FFmpeg, o Python e o Node já vêm instalados. O Playwright com Chromium também vem pronto: as skills `capa` e `reels` funcionam sem `npm install`.

Na primeira edição da sessão, confira e instale o que faltar:

```bash
python3 -c "import faster_whisper" 2>/dev/null || pip install -q faster-whisper
yt-dlp --version 2>/dev/null || pip install -q yt-dlp
```

O faster-whisper baixa o modelo de transcrição do Hugging Face no primeiro uso. Se a rede bloquear, explique ao usuário que é preciso liberar os endereços do Hugging Face no ambiente (veja `MOBILE.md`).

**VoiceStudio não funciona na nuvem:** ele é um aplicativo de computador. No celular, a narração é feita pelo conector do ElevenLabs (skill `narracao`).

## Regras

- Siga o Método CRIAR da skill `editar`: compreender, plano com aprovação, execução, revisão e entrega.
- Material de cliente é confidencial. Processe localmente na sessão e não envie para serviços externos sem permissão.
- Avise antes de qualquer ação que gere custo (ElevenLabs).
