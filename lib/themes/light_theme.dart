import 'package:flutter/material.dart';

const brightness = Brightness.light;
// Definindo as cores como constantes para fácil reutilização e clareza
const Color corPrimaria = Color(0xFF40C0B5); // Verde-Água (Identidade)
const Color corSecundaria = Color(0xFFFF7F50); // Coral Suave (Alerta Amigável)
const Color corAcao = Color(0xFF2A9D8F); // Verde Intenso (Call to Action)
const Color corFundo = Color(0xFFFFFFFF); // Branco (Fundo)
const Color corTexto = Color(0xFF4A4A4A); // Grafite (Texto)

ThemeData lightTheme() {
  return ThemeData(
    // 1. Definição do ColorScheme (o coração do sistema de cores)
    colorScheme: ColorScheme.light(
      // Cor primária da marca
      primary: corPrimaria,
      // Cor do texto e ícones que ficam EM CIMA da cor primária
      onPrimary: Colors.white,

      // Cor secundária para elementos de destaque e interativos
      secondary: corSecundaria,
      // Cor do texto e ícones EM CIMA da cor secundária
      onSecondary: Colors.white,

      // Cor de fundo principal das telas
      background: corFundo,
      // Cor do texto e ícones EM CIMA da cor de fundo
      onBackground: corTexto,

      // Cor da superfície de componentes como Cards, Dialogs, etc.
      surface: corFundo,
      // Cor do texto e ícones EM CIMA da cor de superfície
      onSurface: corTexto,

      // Cor padrão para erros
      error: Colors.redAccent,
      // Cor do texto e ícones EM CIMA da cor de erro
      onError: Colors.white,

      // Define que o tema é claro
      brightness: Brightness.light,
    ),

    // 2. Tema específico para o botão de ação (Call to Action)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: corAcao, // Cor de fundo do botão
        foregroundColor: Colors.white, // Cor do texto e ícone do botão
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),

    // 3. Tema para a AppBar (usará a cor primária por padrão)
    appBarTheme: const AppBarTheme(
      backgroundColor: corPrimaria,
      foregroundColor: Colors.white, // Cor do título e dos ícones na AppBar
      elevation: 2,
      centerTitle: true,
    ),

    // 4. Tema de texto padrão
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: corTexto),
      displayMedium: TextStyle(color: corTexto),
      displaySmall: TextStyle(color: corTexto),
      headlineLarge: TextStyle(color: corTexto),
      headlineMedium: TextStyle(color: corTexto),
      headlineSmall: TextStyle(color: corTexto),
      titleLarge: TextStyle(color: corTexto, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: corTexto),
      titleSmall: TextStyle(color: corTexto),
      bodyLarge: TextStyle(color: corTexto),
      bodyMedium: TextStyle(color: corTexto),
      bodySmall: TextStyle(color: corTexto),
      labelLarge: TextStyle(color: corTexto),
      labelMedium: TextStyle(color: corTexto),
      labelSmall: TextStyle(color: corTexto),
    ),

    // 5. Outras customizações
    scaffoldBackgroundColor: corFundo,
    cardTheme: CardThemeData(
      elevation: 1,
      color: corFundo,
      surfaceTintColor:
          Colors.transparent, // Evita que o card mude de cor ao rolar
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}
