-# Atomic Design System

Esta estrutura segue a metodologia **Atomic Design** criada por Brad Frost, que organiza componentes de UI em uma hierarquia clara e escalável.

## 📚 Estrutura

```
widgets/
├── atoms/              # Átomos - Elementos básicos indivisíveis
│   ├── google_icon.dart
│   ├── google_text.dart
│   └── atoms.dart
│
├── molecules/          # Moléculas - Combinações simples de átomos
│   ├── buttons/
│   │   ├── google_avatar_button.dart
│   │   ├── google_elevated_button.dart
│   │   ├── google_floating_action_button.dart
│   │   ├── google_icon_button.dart
│   │   └── buttons.dart
│   ├── tiles/
│   │   ├── google_drive_body_tile.dart
│   │   ├── google_left_side_bar_tile.dart
│   │   ├── google_mail_body_tile.dart
│   │   └── tiles.dart
│   └── molecules.dart
│
├── organisms/          # Organismos - Componentes complexos
│   ├── google_app_bar.dart
│   ├── google_body.dart
│   ├── google_left_side_bar.dart
│   └── organisms.dart
│
├── templates/          # Templates - Layouts de página
│   ├── google_scaffold.dart
│   └── templates.dart
│
└── google_widgets.dart # Entry point principal
```

## 🔍 Hierarquia Atomic Design

### 1️⃣ **Atoms (Átomos)**

Elementos básicos e indivisíveis da UI. São os blocos de construção mais simples.

**Exemplos:**

- `GoogleIcon` - Ícones individuais
- `GoogleText` - Textos com estilo

**Características:**

- ✅ Não podem ser divididos em partes menores
- ✅ Reutilizáveis em toda a aplicação
- ✅ Estilizados de acordo com o design system

### 2️⃣ **Molecules (Moléculas)**

Combinações simples de átomos que formam componentes funcionais básicos.

**Exemplos:**

- `GoogleIconButton` - Ícone + Comportamento de botão
- `GoogleElevatedButton` - Texto + Estilo elevado + Ação
- `GoogleDriveBodyTile` - Ícone + Textos + Layout

**Características:**

- ✅ Combinam 2 ou mais átomos
- ✅ Têm uma função específica
- ✅ Podem ser reutilizados em diferentes contextos

### 3️⃣ **Organisms (Organismos)**

Componentes complexos que combinam moléculas e/ou átomos em seções distintas da interface.

**Exemplos:**

- `GoogleAppBar` - Barra superior completa com logo, busca, ações
- `GoogleLeftSideBar` - Menu lateral completo com navegação
- `GoogleBody` - Área de conteúdo principal

**Características:**

- ✅ Seções relativamente complexas da UI
- ✅ Podem conter múltiplas moléculas
- ✅ Formam partes distintas de uma interface

### 4️⃣ **Templates (Templates)**

Layouts de página que organizam organismos em estruturas específicas.

**Exemplos:**

- `GoogleScaffold` - Layout completo da aplicação

**Características:**

- ✅ Definem a estrutura da página
- ✅ Organizam organismos em layouts específicos
- ✅ Focam na estrutura, não no conteúdo

## 📖 Como Usar

### Import único via barrel export:

```dart
import 'package:google_design_system/google_design_system.dart';

// Todos os widgets do Atomic Design estão disponíveis
```

### Por nível (mais específico):

```dart
// Apenas atoms
import 'package:google_design_system/foundation/widgets/atoms/atoms.dart';

// Apenas molecules
import 'package:google_design_system/foundation/widgets/molecules/molecules.dart';

// Apenas organisms
import 'package:google_design_system/foundation/widgets/organisms/organisms.dart';

// Apenas templates
import 'package:google_design_system/foundation/widgets/templates/templates.dart';
```

### Por categoria dentro de molecules:

```dart
// Apenas buttons
import 'package:google_design_system/foundation/widgets/molecules/buttons/buttons.dart';

// Apenas tiles
import 'package:google_design_system/foundation/widgets/molecules/tiles/tiles.dart';
```

## 🎯 Benefícios

1. **📦 Modularidade**: Componentes independentes e reutilizáveis
2. **🔄 Consistência**: Design system unificado
3. **🚀 Escalabilidade**: Fácil adicionar novos componentes
4. **🧪 Testabilidade**: Componentes isolados são mais fáceis de testar
5. **📚 Documentação**: Hierarquia clara facilita entendimento
6. **👥 Colaboração**: Equipe compartilha vocabulário comum

## 📝 Convenções

- **Nomenclatura**: Todos os componentes seguem o padrão `Google*`
- **Barrel Exports**: Cada nível tem seu arquivo de export (`atoms.dart`, `molecules.dart`, etc.)
- **Organização**: Subcategorias em molecules (`buttons/`, `tiles/`)
- **Documentação**: Comentários explicativos em cada nível

## 🔗 Referências

- [Atomic Design by Brad Frost](https://atomicdesign.bradfrost.com/)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Material Design Guidelines](https://m3.material.io/)
