<template>
  <v-layout>
    <v-flex>
      <!-- Reactive set of tiles based on 'examples' state -->
      <v-list>
        <v-list-title v-for="example in examples" :key="example.id" :class="example.colour">
          <v-list-title-content>{{example.name}}</v-list-title-content>
        </v-list-title>
      </v-list>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  data () {
    return {
      examples: []
    }
  },
  methods: {
    async updateExamples() {
      this.examples = await this.$axios.$get('/examples')
    }
  },
  // template 이 initialize 되면 자동으로 호출 되는 함수. 리액트의 componentDidMount Life cycle 인듯함.
  mounted () {
    this.updateExamples()
  }
}
</script>
