<template>
  <div id="app">
    <v-app>
      <v-toolbar app dark>
        <v-toolbar-title>Auth example</v-toolbar-title>
        <v-spacer />
        <!-- nuxt option 은 브라우저의 a 태그 방식 대신, nuxt 의 router 를 사용한다는 의미임. Next.js 에서 Link 컴포넌트 사용하는거랑 동일한듯함. -->
        <v-btn icon nuxt href="/"><v-icon>home</v-icon></v-btn>
      </v-toolbar>
      <v-content>
        <v-container fluid>
          <nuxt/>
        </v-container>
      </v-content>
    </v-app>
  </div>
</template>
