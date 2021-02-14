<template>
    <v-app app>
        <v-card class="m-5" background-color="light-blue">
            <v-card-title>
                <v-icon>mdi-account-group</v-icon> &nbsp;&nbsp; All Examination
                <v-spacer></v-spacer>
                <v-text-field
                    v-model="search"
                    append-icon="mdi-magnify"
                    label="Search"
                    single-line
                    hide-details
                ></v-text-field>
            </v-card-title>
            <v-data-table
                :search="search"
                :headers="headers"
                :items="forms"
            ></v-data-table>
        </v-card>
    </v-app>
</template>

<script>
export default {
    data() {
        return {
            search: "",
            forms: [],
            headers: [
                { text: "exam_name", value: "exam_name" },
                { text: "exam_date", value: "exam_date" },
                { text: "exam_circular", value: "exam_circular" }
            ]
        };
    },
    mounted() {
        fetch("https://apply.test/api/forms")
            .then(res => res.json())
            .then(res => (this.users = res));
    }
};
</script>

<style lang="scss" scoped></style>
