<template>
    <v-app app>
        <v-card class="m-5" background-color="light-blue">
            <v-card-title>
                <v-icon>mdi-account-group</v-icon> &nbsp;&nbsp; All Users
                <v-spacer></v-spacer>
                <v-text-field
                    v-model="search"
                    append-icon="mdi-magnify"
                    label="Search Users"
                    single-line
                    hide-details
                ></v-text-field>
            </v-card-title>
            <v-data-table
                :search="search"
                :headers="headers"
                :items="users"
            ></v-data-table>
        </v-card>
    </v-app>
</template>

<script>
export default {
    data() {
        return {
            search: "",
            users: [],
            headers: [
                { text: "User ID", value: "id" },
                { text: "User Name", value: "name" },
                { text: "User Email", value: "email" },
                { text: "Created At", value: "created_at" },
            ],
        };
    },
    mounted() {
        fetch("http://apply.test/api/users")
            .then((res) => res.json())
            .then((res) => (this.users = res));
    },
};
</script>

<style lang="scss" scoped></style>
