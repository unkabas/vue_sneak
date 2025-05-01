<script setup lang="ts">
import axios from 'axios'
import { onMounted, ref, watch } from 'vue'
import CardList from './components/CardList.vue'
// import Drawer from './components/Drawer.vue'
import Header from './components/Header.vue'

const items = ref([])

const sortBy = ref('')
const searchQuery = ref('')

const onChangeSelect = (event: Event) => {
	sortBy.value = (event.target as HTMLSelectElement).value
}

onMounted(async () => {
	try {
		const { data } = await axios.get('https://0f285d6667c87a29.mokky.dev/items')
		items.value = data
	} catch (err) {
		console.log(err)
	}
})
watch(sortBy, async () => {
	try {
		const { data } = await axios.get(
			'https://0f285d6667c87a29.mokky.dev/items?sortBy=' + sortBy.value
		)
		items.value = data
	} catch (err) {
		console.log(err)
	}
})
</script>

<template>
	<!-- <Drawer /> -->
	<div class="bg-white w-4/5 m-auto rounded-xl shadow-xl mt-10">
		<Header />
		<div class="p-10">
			<div class="flex justify-between items-center">
				<h2 class="text-3xl font-bold mb-8">Все кроссовки</h2>

				<div class="flex gap-4">
					<select
						@change="onChangeSelect"
						class="py-2 px-3 border rounded-md outline-none"
					>
						<option value="name">По названию</option>
						<option value="-price">Дорогие</option>
						<option value="price">Дешевые</option>
					</select>

					<div class="relative">
						<img src="/search.svg" alt="Search" class="absolute left-4 top-3" />
						<input
							type="text"
							placeholder="Поиск..."
							class="border border-gray-200 rounded-md py-2 pl-11 pr-4 outline-none focus:border-gray-400 transition"
						/>
					</div>
				</div>
			</div>
			<CardList :items="items" />
		</div>
	</div>
</template>
