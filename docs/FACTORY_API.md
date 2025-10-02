# 🏭 Factory API - Google Design System

Documentação completa das Factory Classes implementadas seguindo o padrão Atomic Design.

## 📚 Índice

- [GoogleAtoms](#googleatoms)
- [GoogleButtons](#googlebuttons)
- [GoogleTiles](#googletiles)
- [GoogleMolecules](#googlemolecules)
- [GoogleOrganisms](#googleorganisms)
- [GoogleTemplates](#googletemplates)
- [GoogleComponents](#googlecomponents)

---

## ⚛️ GoogleAtoms

Factory class para criar componentes atômicos (elementos mais básicos).

### Métodos Disponíveis

#### `icon()`

Cria um ícone Google com tamanho customizável.

```dart
GoogleAtoms.icon(
  GoogleIcons.add,
  key: key,
  size: 20.0,
)
```

**Parâmetros:**

- `icon` (IconData, required): O ícone a ser exibido
- `key` (Key?, optional): Chave do widget
- `size` (double?, optional): Tamanho do ícone (padrão: 20)

#### `iconMedium()`

Cria um ícone médio (20px).

```dart
GoogleAtoms.iconMedium(GoogleIcons.folder)
```

#### `iconLarge()`

Cria um ícone grande (24px).

```dart
GoogleAtoms.iconLarge(GoogleIcons.star)
```

#### `text()`

Cria um texto estilizado Google.

```dart
GoogleAtoms.text(
  'Hello World',
  key: key,
  fontColor: Colors.blue,
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
)
```

**Parâmetros:**

- `data` (String, required): O texto a ser exibido
- `key` (Key?, optional): Chave do widget
- `fontColor` (Color?, optional): Cor do texto
- `fontSize` (double?, optional): Tamanho da fonte
- `fontWeight` (FontWeight?, optional): Peso da fonte

#### `textTitleLarge()`

Cria um título grande estilizado.

```dart
GoogleAtoms.textTitleLarge('My Title')
```

### Métodos Utilitários

- `allTypes()`: Retorna lista com exemplos de todos os tipos de átomos
- `availableTypes`: Getter que retorna lista de nomes dos tipos disponíveis

---

## 🔘 GoogleButtons

Factory class para criar todos os tipos de botões.

### Métodos Disponíveis

#### `avatar()`

Cria um botão de avatar (sem parâmetros customizáveis).

```dart
GoogleButtons.avatar(key: key)
```

#### `elevated()`

Cria um botão elevado.

```dart
GoogleButtons.elevated(
  key: key,
  onPressed: () => print('Pressed'),
  child: Text('Click Me'),
  elevation: 2.0,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `onPressed` (VoidCallback?, required): Callback ao pressionar
- `child` (Widget, required): Widget filho (normalmente Text)
- `elevation` (double?, optional): Elevação do botão

#### `icon()`

Cria um botão de ícone.

```dart
GoogleButtons.icon(
  key: key,
  icon: Icon(GoogleIcons.add),
  onPressed: () {},
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `icon` (Widget, required): Ícone do botão
- `onPressed` (VoidCallback?, required): Callback ao pressionar

#### `floatingAction()`

Cria um FAB padrão.

```dart
GoogleButtons.floatingAction(
  key: key,
  child: Icon(GoogleIcons.add),
  onPressed: () {},
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `child` (Widget, required): Widget filho
- `onPressed` (VoidCallback?, required): Callback ao pressionar

#### `floatingActionExtended()`

Cria um FAB estendido com label.

```dart
GoogleButtons.floatingActionExtended(
  key: key,
  label: 'New Document',
  onPressed: () {},
  icon: GoogleIcons.add,
  backgroundColor: Colors.blue,
  elevation: 4.0,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `label` (String, required): Texto do botão
- `onPressed` (VoidCallback?, required): Callback ao pressionar
- `icon` (IconData?, optional): Ícone opcional
- `backgroundColor` (Color?, optional): Cor de fundo
- `elevation` (double?, optional): Elevação

### Métodos Utilitários

- `allTypes(onPressed)`: Retorna lista com todos os tipos de botões
- `allTypesMap(onPressed)`: Retorna map `nome → widget`
- `availableTypes`: Lista de nomes dos tipos disponíveis

---

## 📋 GoogleTiles

Factory class para criar tiles (items de lista).

### Métodos Disponíveis

#### `leftSideBar()`

Cria um tile para a barra lateral.

```dart
GoogleTiles.leftSideBar(
  key: key,
  icon: GoogleIcons.folder,
  title: 'My Drive',
  tileType: GoogleLeftSideBarTileType.small,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `icon` (IconData, required): Ícone do tile
- `title` (String, required): Título do tile
- `tileType` (GoogleLeftSideBarTileType, optional): Tipo do tile (small/big)

#### `driveBody()`

Cria um tile para o corpo do Google Drive.

```dart
GoogleTiles.driveBody(
  key: key,
  folderName: 'Documents',
  folderOwnerName: 'me',
  dateFormatted: '2024',
  folderSizeFormatted: '1.5 GB',
  isShared: false,
  isSelected: false,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `folderName` (String, required): Nome da pasta
- `folderOwnerName` (String, required): Nome do proprietário
- `dateFormatted` (String, required): Data formatada
- `folderSizeFormatted` (String, required): Tamanho formatado
- `isShared` (bool, required): Se está compartilhado
- `isSelected` (bool, required): Se está selecionado

#### `mailBody()`

Cria um tile para o corpo do Gmail.

```dart
GoogleTiles.mailBody(
  key: key,
  subject: 'Meeting Tomorrow',
  description: 'Team sync at 3pm',
  dateFormatted: 'Oct 1',
  starred: true,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `subject` (String, required): Assunto do email
- `description` (String, required): Descrição/prévia
- `dateFormatted` (String, required): Data formatada
- `starred` (bool, required): Se tem estrela

### Métodos Utilitários

- `allTypes()`: Retorna lista com exemplos de todos os tipos de tiles
- `availableTypes`: Lista de nomes dos tipos disponíveis

---

## 🧬 GoogleMolecules

Classe de acesso às moléculas (combinações de átomos).

### Getters Disponíveis

#### `buttons`

Acessa a factory class de botões.

```dart
final molecules = GoogleMolecules();
molecules.buttons.elevated(onPressed: () {}, child: Text('Click'));
```

#### `tiles`

Acessa a factory class de tiles.

```dart
final molecules = GoogleMolecules();
molecules.tiles.driveBody(...);
```

---

## 🏗️ GoogleOrganisms

Factory class para criar organismos (componentes complexos).

### Métodos Disponíveis

#### `appBar()`

Cria a barra superior do app.

```dart
GoogleOrganisms.appBar(
  key: key,
  image: Image.asset('logo.png'),
  title: 'Drive',
  barHintText: 'Search in Drive',
  haveHottomDivider: false,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `image` (Widget, required): Logo/imagem da app bar
- `title` (String, required): Título do app
- `barHintText` (String, required): Texto de hint da busca
- `haveHottomDivider` (bool, optional): Se tem divisor inferior

#### `body()`

Cria o corpo principal com lista de tiles.

```dart
GoogleOrganisms.body(
  key: key,
  bodyTileList: [tile1, tile2, tile3],
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `bodyTileList` (List<Widget>, required): Lista de tiles

#### `leftSideBar()`

Cria a barra lateral de navegação.

```dart
GoogleOrganisms.leftSideBar(
  key: key,
  floatingActionButton: fab,
  leftSideBarTileList: menuItems,
  tileType: GoogleLeftSideBarTileType.small,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `floatingActionButton` (GoogleFloatingActionButton, required): FAB do topo
- `leftSideBarTileList` (List<LeftSideBarTileModel>, required): Lista de itens
- `tileType` (GoogleLeftSideBarTileType, optional): Tipo dos tiles

### Métodos Utilitários

- `availableTypes`: Lista de nomes dos tipos disponíveis

---

## 🏛️ GoogleTemplates

Factory class para criar templates (layouts de página).

### Métodos Disponíveis

#### `scaffold()`

Cria o scaffold principal da aplicação.

```dart
GoogleTemplates.scaffold(
  key: key,
  logo: Image.asset('logo.png'),
  title: 'Drive',
  barHintText: 'Search in Drive',
  leftSideBar: sideBar,
  bodyTileList: tiles,
  haveHottomDivider: false,
)
```

**Parâmetros:**

- `key` (Key?, optional): Chave do widget
- `logo` (Image, required): Logo do app
- `title` (String, required): Título
- `barHintText` (String, required): Hint da busca
- `leftSideBar` (GoogleLeftSideBar, required): Barra lateral
- `bodyTileList` (List<Widget>, required): Lista de tiles do corpo
- `haveHottomDivider` (bool, optional): Se tem divisor inferior

### Métodos Utilitários

- `availableTypes`: Lista de nomes dos tipos disponíveis

---

## 🎯 GoogleComponents

Classe central que fornece acesso hierárquico a todos os componentes.

### Getters Disponíveis

#### `atoms`

Acessa os componentes atômicos.

```dart
components.atoms.icon(GoogleIcons.add)
components.atoms.text('Hello')
```

#### `molecules`

Acessa as moléculas (botões e tiles).

```dart
components.molecules.buttons.elevated(...)
components.molecules.tiles.driveBody(...)
```

#### `organisms`

Acessa os organismos (componentes complexos).

```dart
components.organisms.appBar(...)
components.organisms.body(...)
components.organisms.leftSideBar(...)
```

#### `templates`

Acessa os templates (layouts).

```dart
components.templates.scaffold(...)
```

---

## 🚀 Exemplos Completos

### Exemplo 1: Uso Direto das Factory Classes

```dart
import 'package:google_design_system/google_design_system.dart';

Widget myButton() {
  return GoogleButtons.elevated(
    onPressed: () => print('Clicked!'),
    child: Text('Click Me'),
  );
}

Widget myTile() {
  return GoogleTiles.driveBody(
    folderName: 'My Documents',
    folderOwnerName: 'me',
    dateFormatted: '2024',
    folderSizeFormatted: '2.3 GB',
    isShared: false,
    isSelected: false,
  );
}
```

### Exemplo 2: Uso via GoogleComponents

```dart
Widget build(BuildContext context) {
  final designSystem = GoogleApp.of(context).designSystem;
  final components = designSystem.components;

  return components.templates.scaffold(
    logo: Image.asset('logo.png'),
    title: 'My App',
    barHintText: 'Search...',
    leftSideBar: components.organisms.leftSideBar(
      floatingActionButton: components.molecules.buttons.floatingActionExtended(
        label: 'New',
        onPressed: () {},
      ),
      leftSideBarTileList: menuItems,
    ),
    bodyTileList: [
      components.molecules.tiles.driveBody(...),
      components.molecules.tiles.driveBody(...),
    ],
  );
}
```

### Exemplo 3: Criando Tela Completa

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleTemplates.scaffold(
      logo: Image.asset('assets/images/logo.png'),
      title: 'Google Drive Clone',
      barHintText: 'Search in Drive',
      leftSideBar: GoogleOrganisms.leftSideBar(
        floatingActionButton: GoogleButtons.floatingActionExtended(
          label: 'New',
          icon: GoogleIcons.add,
          onPressed: () {},
        ),
        leftSideBarTileList: [
          LeftSideBarTileModel(icon: GoogleIcons.folder, title: 'My Drive'),
          LeftSideBarTileModel(icon: GoogleIcons.people, title: 'Shared'),
          LeftSideBarTileModel(icon: GoogleIcons.schedule, title: 'Recent'),
        ],
      ),
      bodyTileList: folders.map(
        (folder) => GoogleTiles.driveBody(
          folderName: folder.name,
          folderOwnerName: folder.owner,
          dateFormatted: folder.date,
          folderSizeFormatted: folder.size,
          isShared: folder.isShared,
          isSelected: false,
        ),
      ).toList(),
    );
  }
}
```

---

## ✅ Vantagens da Factory API

1. **🎨 Consistência**: API uniforme em todos os layers
2. **📝 Menos Verboso**: Nomes mais curtos e diretos
3. **🔍 Descoberta**: Autocomplete mostra todas as opções
4. **📚 Documentação**: Comentários e exemplos inline
5. **🧪 Testabilidade**: Fácil criar mocks
6. **🔄 Flexibilidade**: Adicionar variantes sem quebrar código
7. **👥 Colaboração**: Vocabulário comum na equipe
8. **🚀 Produtividade**: Menos código boilerplate

---

## 📖 Convenções de Nomenclatura

| Layer               | Classe Factory    | Método                         | Exemplo                      |
| ------------------- | ----------------- | ------------------------------ | ---------------------------- |
| Atoms               | `GoogleAtoms`     | `icon()`, `text()`             | `GoogleAtoms.icon()`         |
| Molecules - Buttons | `GoogleButtons`   | `elevated()`, `icon()`         | `GoogleButtons.elevated()`   |
| Molecules - Tiles   | `GoogleTiles`     | `leftSideBar()`, `driveBody()` | `GoogleTiles.driveBody()`    |
| Organisms           | `GoogleOrganisms` | `appBar()`, `body()`           | `GoogleOrganisms.appBar()`   |
| Templates           | `GoogleTemplates` | `scaffold()`                   | `GoogleTemplates.scaffold()` |

---

## 🔧 Manutenção e Extensão

### Adicionando Novo Botão

1. Crie o componente: `google_new_button.dart`
2. Adicione export em `buttons.dart`
3. Adicione método factory em `GoogleButtons`:

```dart
static Widget newButton({
  Key? key,
  required VoidCallback? onPressed,
  // ... outros parâmetros
}) {
  return GoogleNewButton(
    key: key,
    onPressed: onPressed,
    // ...
  );
}
```

4. Atualize `allTypes()` e `availableTypes`

### Adicionando Novo Layer

1. Crie pasta: `foundation/components/my_layer/`
2. Crie arquivo barrel: `my_layer.dart`
3. Crie factory class: `GoogleMyLayer`
4. Adicione getter em `GoogleComponents`

---

**Última atualização:** Outubro 2025
**Versão:** 1.0.0
