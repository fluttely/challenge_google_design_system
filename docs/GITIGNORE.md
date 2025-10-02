# 📝 Estrutura do .gitignore - Monorepo

## 🎯 Objetivo

Este monorepo utiliza um **único arquivo `.gitignore` centralizado** na raiz do projeto. Todas as regras aplicam-se recursivamente a todos os apps e packages.

## 📍 Localização

```
/
├── .gitignore          ← ÚNICO arquivo .gitignore (centralizado)
├── apps/
│   ├── google_drive/   ← Sem .gitignore
│   ├── google_keep/    ← Sem .gitignore
│   └── google_mail/    ← Sem .gitignore
└── packages/
    ├── google_core/    ← Sem .gitignore
    └── google_design_system/  ← Sem .gitignore
```

## ✅ Vantagens da Centralização

1. **🎯 Manutenção Única**: Uma única fonte de verdade para todas as regras
2. **🔄 Consistência**: Todos os packages seguem as mesmas regras
3. **📝 Simplicidade**: Não precisa replicar regras em múltiplos arquivos
4. **🚀 Escalabilidade**: Fácil adicionar novos packages sem criar novos .gitignore
5. **👁️ Visibilidade**: Todas as regras visíveis em um só lugar

## 📋 Seções do .gitignore Centralizado

### 1. Miscellaneous

Arquivos temporários e do sistema operacional:

- `*.log`, `*.swp`, `.DS_Store`
- Editores: `.atom/`, `.history`

### 2. IntelliJ / Android Studio

Arquivos de configuração da IDE:

- `*.iml`, `*.ipr`, `*.iws`, `.idea/`
- Módulos gerados pelo Melos: `melos_*.iml`

### 3. VS Code

Configurações opcionais do VS Code:

- `.vscode/` (comentado por padrão)

### 4. Flutter / Dart / Pub

Artefatos de build e dependências:

- `**/build/` - Diretórios de build em qualquer package
- `**/.dart_tool/` - Cache do Dart em qualquer package
- `**/.flutter-plugins*` - Plugins do Flutter
- `**/.packages` - Arquivos de packages
- `packages/**/pubspec.lock` - Lock files apenas dos packages (apps mantém)
- `**/pubspec_overrides.yaml` - Overrides gerados pelo Melos

### 5. Symbolication & Obfuscation

Arquivos de debug e ofuscação:

- `app.*.symbols`, `app.*.map.json`

### 6. Android Studio Build Artifacts

Artefatos de build do Android Studio:

- `**/android/app/debug`
- `**/android/app/profile`
- `**/android/app/release`

### 7. Platform-Specific

Pastas de plataformas (não usadas neste projeto web-only):

- `**/android/`, `**/ios/`, `**/linux/`, `**/macos/`, `**/windows/`

### 8. Melos

Ferramentas do Melos:

- `.melos_tool/`

### 9. Test Coverage

Arquivos de cobertura de testes:

- `coverage/`, `**/.test_coverage.dart`

### 10. Temporary Files

Arquivos temporários diversos:

- `*.tmp`, `*.temp`, `*~`

## 🔍 Padrões Glob Utilizados

| Padrão    | Significado                          | Exemplo                                       |
| --------- | ------------------------------------ | --------------------------------------------- |
| `**/`     | Qualquer diretório em qualquer nível | `**/build/` ignora `apps/google_drive/build/` |
| `*.ext`   | Qualquer arquivo com extensão        | `*.log` ignora `error.log`                    |
| `folder/` | Diretório específico                 | `build/` ignora apenas `/build/` na raiz      |
| `#`       | Comentário                           | `# Isto é um comentário`                      |

## ⚠️ Regras Importantes

### pubspec.lock

```ignore
# Apps mantém pubspec.lock (versões fixas)
✅ apps/google_drive/pubspec.lock (tracked)
✅ apps/google_keep/pubspec.lock (tracked)
✅ apps/google_mail/pubspec.lock (tracked)

# Packages NÃO mantém pubspec.lock (versionamento flexível)
❌ packages/google_core/pubspec.lock (ignored)
❌ packages/google_design_system/pubspec.lock (ignored)
```

**Regra aplicada:**

```ignore
packages/**/pubspec.lock
```

### pubspec_overrides.yaml

Gerados automaticamente pelo Melos, sempre ignorados:

```ignore
**/pubspec_overrides.yaml
```

### Build Directories

Todos os diretórios de build são ignorados recursivamente:

```ignore
**/build/
```

## 🛠️ Manutenção

### Para Adicionar Nova Regra

1. Abra `.gitignore` na raiz
2. Adicione a regra na seção apropriada
3. Use `**/` para aplicar recursivamente
4. Comente a regra explicando o motivo

**Exemplo:**

```ignore
# Ignorar arquivos de cache customizados
**/.my_custom_cache/
```

### Para Testar Regras

```bash
# Ver arquivos que seriam ignorados
git status --ignored

# Ver se um arquivo específico é ignorado
git check-ignore -v path/to/file

# Listar todos arquivos ignorados
git ls-files --others --ignored --exclude-standard
```

### Para Limpar Cache do Git

Se você adicionou novas regras e quer aplicá-las a arquivos já rastreados:

```bash
# Remover do cache (não deleta os arquivos)
git rm -r --cached .

# Re-adicionar respeitando novo .gitignore
git add .

# Commitar as mudanças
git commit -m "chore: update .gitignore rules"
```

## ✅ Validação

Para garantir que o `.gitignore` está funcionando:

```bash
# 1. Ver status limpo (sem arquivos build/cache)
git status

# 2. Verificar que packages não rastreiam pubspec.lock
ls -la packages/google_core/pubspec.lock  # Pode existir
git check-ignore packages/google_core/pubspec.lock  # Deve retornar o path

# 3. Verificar que apps rastreiam pubspec.lock
git ls-files apps/google_drive/pubspec.lock  # Deve listar o arquivo
```

## 📚 Boas Práticas

### ✅ Fazer

- ✅ Adicionar comentários explicando regras não óbvias
- ✅ Agrupar regras por categoria
- ✅ Usar `**/` para aplicar em todo monorepo
- ✅ Testar regras antes de commitar
- ✅ Documentar exceções importantes

### ❌ Evitar

- ❌ Criar novos `.gitignore` em subpastas
- ❌ Adicionar regras muito específicas de um package
- ❌ Ignorar arquivos de configuração compartilhados
- ❌ Remover regras sem entender o impacto

## 🔄 Sincronização

O `.gitignore` centralizado é automaticamente respeitado por:

- ✅ `git` - Controle de versão
- ✅ `melos` - Gerenciamento do monorepo
- ✅ IDEs (VS Code, IntelliJ, Android Studio)
- ✅ Ferramentas de CI/CD

## 📞 Suporte

Se você precisar ignorar arquivos específicos de um package:

1. **Primeira opção**: Adicione ao `.gitignore` raiz com padrão específico

   ```ignore
   # Ignorar apenas no google_drive
   apps/google_drive/specific-file.txt
   ```

2. **Segunda opção**: Use `.git/info/exclude` para regras locais (não compartilhadas)

---

**Última atualização:** Outubro 2025
**Versão:** 1.0.0
