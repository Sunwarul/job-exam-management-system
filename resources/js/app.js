require('./bootstrap');
import Vue from 'vue';
import vuetify from './plugins/vuetify';

Vue.component('users-component', require('./components/UsersComponent.vue').default);

const app = new Vue({
    el: '#app',
    vuetify
});
