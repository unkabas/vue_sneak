<script setup lang="ts">
import Card from './Card.vue'

defineProps<{
	items: {
		id: number
		title?: string
		imageUrl?: string
		price?: number
	}[]
}>()

const onClickAdd = () => {
	alert('Кроссовок добавлен в корзину')
}
const onClickFavorite = () => {
	alert('Кроссовок добавлен в избранное')
}
</script>

<template>
	<div class="grid grid-cols-4 gap-5">
		<Card
			v-for="item in items"
			:key="item.id"
			:title="item.title"
			:image-url="item.imageUrl"
			:price="item.price"
			:is-favorite="false"
			:is-added="false"
			:on-click-add="onClickAdd"
			:on-click-favorite="onClickFavorite"
		/>
	</div>
</template>
