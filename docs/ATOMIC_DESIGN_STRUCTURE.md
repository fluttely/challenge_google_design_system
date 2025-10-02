# Estrutura Atomic Design - Visualização

## 📊 Diagrama Hierárquico

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│                    🔧 google_design_system                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
                                │
                ┌───────────────┴──────────────┐
                │                              │
        ┌───────▼────────┐              ┌──────▼──────┐
        │   Foundation   │              │Configuration│
        └───────┬────────┘              └─────────────┘
                │
        ┌───────┴────┐
        │            │
    ┌───▼───┐    ┌───▼───┐
    │ Theme │    │Widgets│
    └───────┘    └───┬───┘
                     │
        ┌────────────┼─────────────┬─────────────┐
        │            │             │             │
    ┌───▼───┐   ┌────▼────┐   ┌────▼────┐   ┌────▼────┐
    │ Atoms │   │Molecules│   │Organisms│   │Templates│
    └───┬───┘   └────┬────┘   └────┬────┘   └────┬────┘
        │            │             │             │
        │            │             │             │
```

## 🎯 Atomic Design Layers

### 1️⃣ Atoms (Elementos Básicos)

```
atoms/
├── google_icon.dart       ⚛️ Ícone individual
├── google_text.dart       ⚛️ Texto estilizado
└── atoms.dart            📦 Barrel export
```

### 2️⃣ Molecules (Combinações Simples)

```
molecules/
├── buttons/
│   ├── google_avatar_button.dart          🔘 Botão de avatar
│   ├── google_elevated_button.dart        🔘 Botão elevado
│   ├── google_floating_action_button.dart 🔘 FAB
│   ├── google_icon_button.dart            🔘 Botão de ícone
│   └── buttons.dart                       📦 Barrel export
├── tiles/
│   ├── google_drive_body_tile.dart        📋 Tile do Drive
│   ├── google_left_side_bar_tile.dart     📋 Tile do menu lateral
│   ├── google_mail_body_tile.dart         📋 Tile do Mail
│   └── tiles.dart                         📦 Barrel export
└── molecules.dart                         📦 Barrel export
```

### 3️⃣ Organisms (Componentes Complexos)

```
organisms/
├── google_app_bar.dart        🏗️ Barra superior
├── google_body.dart           🏗️ Corpo principal
├── google_left_side_bar.dart  🏗️ Menu lateral
└── organisms.dart            📦 Barrel export
```

### 4️⃣ Templates (Layouts)

```
templates/
├── google_scaffold.dart      🏛️ Layout principal
└── templates.dart           📦 Barrel export
```

## 🔄 Fluxo de Dependências

```
Templates
    ↓
  depende
    ↓
Organisms
    ↓
  depende
    ↓
Molecules
    ↓
  depende
    ↓
  Atoms
```

## 📖 Exemplos de Uso

### Import Global (Recomendado)

```dart
import 'package:google_design_system/google_design_system.dart';

// Todos os widgets estão disponíveis
Widget build(BuildContext context) {
  return GoogleScaffold(
    // ... usa todos os níveis do Atomic Design
  );
}
```

### Import Específico por Nível

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

### Import Específico por Categoria

```dart
// Apenas buttons
import 'package:google_design_system/foundation/widgets/molecules/buttons/buttons.dart';

// Apenas tiles
import 'package:google_design_system/foundation/widgets/molecules/tiles/tiles.dart';
```

## 🎨 Composição Visual

```
┌─────────────────────────────────────────────────────────────┐
│                      GoogleScaffold                          │ ← Template
│  ┌───────────────────────────────────────────────────────┐  │
│  │              GoogleAppBar                            │  │ ← Organism
│  │  ┌────┐  ┌──────────┐  ┌─────┐  ┌─────┐  ┌─────┐  │  │
│  │  │Logo│  │SearchBar │  │Btn  │  │Btn  │  │Avat │  │  │ ← Molecules
│  │  │    │  │ Icon+Text│  │Icon │  │Icon │  │Icon │  │  │
│  │  └────┘  └──────────┘  └─────┘  └─────┘  └─────┘  │  │
│  └───────────────────────────────────────────────────────┘  │
│  ┌──────┐ ┌────────────────────────────────────────────┐   │
│  │      │ │              GoogleBody                   │   │ ← Organism
│  │Google│ │  ┌──────────────────────────────────────┐ │   │
│  │Left  │ │  │  GoogleDriveBodyTile                 │ │   │ ← Molecule
│  │Side  │ │  │  Icon + Text + Text + Text          │ │   │
│  │Bar   │ │  └──────────────────────────────────────┘ │   │
│  │      │ │  ┌──────────────────────────────────────┐ │   │
│  │Tile  │ │  │  GoogleDriveBodyTile                 │ │   │ ← Molecule
│  │Tile  │ │  │  Icon + Text + Text + Text          │ │   │
│  │Tile  │ │  └──────────────────────────────────────┘ │   │
│  └──────┘ └────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
     ↑           ↑                ↑
  Organism   Organism         Molecules
```

## ✅ Vantagens da Estrutura

1. **🧩 Modularidade**: Cada componente é independente
2. **🔄 Reutilização**: Componentes podem ser usados em múltiplos contextos
3. **📏 Consistência**: Design system unificado
4. **🧪 Testabilidade**: Fácil testar componentes isolados
5. **📚 Documentação**: Hierarquia clara e compreensível
6. **👥 Colaboração**: Vocabulário comum para toda equipe
7. **🚀 Escalabilidade**: Fácil adicionar novos componentes
8. **🎯 Manutenção**: Mudanças em um nível não afetam outros

## 🔍 Quando Usar Cada Nível

### Atoms

- ✅ Quando precisa de elemento básico reutilizável
- ✅ Estilização consistente de elementos primitivos
- ❌ Não use para lógica de negócio

### Molecules

- ✅ Combinação de 2-5 átomos
- ✅ Componente com função específica
- ❌ Não use para seções complexas da UI

### Organisms

- ✅ Seções distintas da interface
- ✅ Combinações complexas de molecules/atoms
- ❌ Não use para página completa

### Templates

- ✅ Layout de página completo
- ✅ Estrutura sem conteúdo específico
- ❌ Não use para componentes menores

## 🏭 Factory Classes (API Profissional)

Cada layer do Atomic Design possui uma **factory class** que fornece métodos estáticos para criar componentes de forma conveniente:

### GoogleAtoms

```dart
// Criar ícones
GoogleAtoms.icon(GoogleIcons.add)
GoogleAtoms.iconMedium(GoogleIcons.folder)
GoogleAtoms.iconLarge(GoogleIcons.star)

// Criar textos
GoogleAtoms.text('Hello World')
GoogleAtoms.textTitleLarge('Title')
```

### GoogleButtons (Molecule)

```dart
// Criar buttons
GoogleButtons.avatar()
GoogleButtons.elevated(onPressed: () {}, child: Text('Click'))
GoogleButtons.icon(icon: Icon(Icons.add), onPressed: () {})
GoogleButtons.floatingAction(child: Icon(Icons.add), onPressed: () {})
GoogleButtons.floatingActionExtended(label: 'New', onPressed: () {})

// Métodos utilitários
GoogleButtons.allTypes(onPressed: () {})  // Lista todos os tipos
GoogleButtons.allTypesMap(onPressed: () {})  // Map de todos os tipos
GoogleButtons.availableTypes  // Lista de nomes
```

### GoogleTiles (Molecule)

```dart
// Criar tiles
GoogleTiles.leftSideBar(icon: GoogleIcons.folder, title: 'My Drive')
GoogleTiles.driveBody(
  folderName: 'Documents',
  folderOwnerName: 'me',
  dateFormatted: '2024',
  folderSizeFormatted: '1.5 GB',
  isShared: false,
  isSelected: false,
)
GoogleTiles.mailBody(
  subject: 'Meeting',
  description: 'Team sync',
  dateFormatted: 'Oct 1',
  starred: true,
)
```

### GoogleOrganisms

```dart
// Criar organisms
GoogleOrganisms.appBar(
  image: Image.asset('logo.png'),
  title: 'Drive',
  barHintText: 'Search in Drive',
)
GoogleOrganisms.body(bodyTileList: [tile1, tile2])
GoogleOrganisms.leftSideBar(
  floatingActionButton: fab,
  leftSideBarTileList: menuItems,
)
```

### GoogleTemplates

```dart
// Criar templates
GoogleTemplates.scaffold(
  logo: Image.asset('logo.png'),
  title: 'Drive',
  barHintText: 'Search in Drive',
  leftSideBar: sidebar,
  bodyTileList: [tile1, tile2],
)
```

### Acesso Hierárquico via GoogleComponents

```dart
// Através do design system
final designSystem = GoogleApp.of(context).designSystem;
final components = designSystem.components;

// Acesso por layer
components.atoms.icon(GoogleIcons.add)
components.molecules.buttons.elevated(onPressed: () {}, child: Text('Button'))
components.molecules.tiles.driveBody(...)
components.organisms.appBar(...)
components.templates.scaffold(...)
```

## 🎯 Benefícios das Factory Classes

1. **🎨 API Consistente**: Todos os layers seguem o mesmo padrão
2. **📝 Menos Verboso**: `GoogleButtons.elevated()` vs `GoogleElevatedButton()`
3. **🔍 Descoberta Fácil**: Autocomplete mostra todos os métodos disponíveis
4. **📚 Auto-documentação**: Métodos nomeados descrevem o que criam
5. **🧪 Testabilidade**: Fácil criar mocks e testes
6. **🔄 Flexibilidade**: Fácil adicionar variantes sem quebrar código existente

```

```
