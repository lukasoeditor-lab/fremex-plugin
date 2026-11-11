# FREMEX no celular

Edite vídeos pelo aplicativo do Claude no celular: você manda o vídeo, diz como quer e recebe o vídeo pronto no celular. O trabalho roda num computador na nuvem, então o celular não precisa de nada instalado.

## O que você precisa

- Aplicativo do Claude no celular, com plano **Pro ou superior** (o Claude Code exige plano pago).
- Conta no **GitHub** conectada ao Claude.
- Uma **cópia deste repositório** na sua conta do GitHub (passo 1).

## 1 · Copiar o estúdio para a sua conta (uma vez)

No navegador do celular, abra **github.com/lukasoeditor-lab/fremex-plugin** e toque em **Fork** (Bifurcar) → **Create fork** (Criar bifurcação).

## 2 · Preparar o ambiente na nuvem (uma vez)

No aplicativo do Claude, abra **Code** e entre nas configurações do ambiente (environment):

**Rede (hosts permitidos):** acrescente os endereços abaixo, que servem para transcrever as legendas e baixar narrações:
```
huggingface.co
cdn-lfs.huggingface.co
cas-bridge.xethub.hf.co
cas-server.xethub.hf.co
us.aws.cdn.hf.co
elevenlabsusercontent.com
```

**Setup script (opcional, deixa tudo pronto em cada sessão):**
```bash
pip install -q faster-whisper yt-dlp
```

## 3 · Editar um vídeo

1. No aplicativo do Claude, abra **Code** e comece uma sessão com o seu repositório `fremex-plugin`.
2. Anexe o vídeo e escreva o que quer, por exemplo:
   > Transforma esse vídeo em reels de 30 segundos, corta as pausas e coloca legenda.
3. O Claude mostra o plano. Responda **ok** ou peça ajustes.
4. Ele envia uma prévia (folha de quadros) e depois o **vídeo final e a capa** direto na conversa. É só baixar e postar.

## Dicas

- **Vídeos grandes:** se o envio pelo app falhar, mande o vídeo mais curto ou comprimido, ou coloque no Google Drive e conecte o Google Drive em claude.ai → Configurações → Conectores.
- **Narração:** conecte o ElevenLabs em claude.ai → Configurações → Conectores. O plano gratuito do ElevenLabs não permite uso comercial.
- **Salve o que importa:** a sessão na nuvem é apagada depois de um tempo. Baixe os vídeos finais no celular ou peça para o Claude enviar para o seu Drive.

## Diferenças em relação ao computador

| | Computador (plugin) | Celular (sessão na nuvem) |
|---|---|---|
| Instalação | `claude plugin install fremex@fremex` | Fork do repositório |
| Narração | VoiceStudio (local, gratuito) ou ElevenLabs | ElevenLabs |
| Arquivos | Pasta no seu computador | Anexos da conversa; entrega pelo app ou pelo Drive |
| Velocidade | Depende do seu computador | Máquina na nuvem |
