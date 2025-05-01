<script setup lang="ts">
defineProps<{
	title?: string
	imageUrl?: string
	price?: number
	isFavorite: boolean
	isAdded: boolean
	onClickAdd: () => void
	onClickFavorite: () => void
}>()
</script>

<template>
	<div
		class="relative bg-white border border-slate-100 rounded-3xl px-8 py-8 cursor-pointer hover:-translate-y-2 hover:shadow-xl transition"
	>
		<img
			@click.stop="onClickFavorite()"
			:src="!isFavorite ? '/like-1.svg' : '/like-2.svg'"
			alt="Like"
			class="absolute top-8 left-8"
		/>
		<img :src="imageUrl" alt="Sneaker" />
		<p class="mt-2">{{ title }}</p>

		<div class="flex justify-between mt-5">
			<div class="flex flex-col">
				<span class="text-slate-400">Цена:</span>
				<b>{{ price }}</b>
			</div>
			<img
				@click.stop="onClickAdd()"
				:src="!isAdded ? '/plus.svg' : '/checked.svg'"
				alt="Plus"
			/>
		</div>
	</div>
</template>
