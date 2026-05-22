Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$scriptDirectory = Split-Path -Parent $PSCommandPath
$repositoryRoot = Split-Path -Parent $scriptDirectory

Push-Location -LiteralPath $repositoryRoot
try {
    codex '$aif-distillation book/content --split --path skills --redact-source-map --name dandy-code'
}
finally {
    Pop-Location
}
