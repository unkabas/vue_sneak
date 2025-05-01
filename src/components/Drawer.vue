<script setup>
import CartItemList from './CartItemList.vue'
import DrawerHead from './DrawerHead.vue'
</script>

<template>
	<div class="fixed top-0 left-0 h-full w-full bg-black z-10 opacity-70"></div>
	<div class="bg-white w-96 h-full fixed right-0 top-0 z-20 p-8">
		<DrawerHead />
		<CartItemList />

		<div class="flex flex-col gap-4 mt-7">
			<div class="flex gap-2">
				<span>Итого:</span>
				<div class="flex-1 border-b border-dashed"></div>
				<b>12999 руб</b>
			</div>

			<div class="flex gap-2">
				<span>Налог 5%:</span>
				<div class="flex-1 border-b border-dashed"></div>
				<b>999 руб</b>
			</div>
			<button
				class="mt-4 transition bg-lime-500 w-full rounded-xl py-3 text-white hover:bg-lime-600 active:bg-lime-700 disabled:bg-slate-300 cursor-pointer disabled:cursor-not-allowed"
			>
				Оформить заказ
			</button>
		</div>
	</div>
</template>
