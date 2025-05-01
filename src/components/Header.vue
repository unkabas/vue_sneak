<template>
	<header class="flex justify-between border-b border-slate-200 px-8 py-8">
		<div class="flex items-center gap-4">
			<img src="/logo.png" alt="Logo" class="w-10" />
			<div>
				<h2 class="font-black text-xl uppercase">Vue Sneakers</h2>
				<p class="text-slate-500">Магазин кроссовок</p>
			</div>
		</div>
		<ul class="flex items-center gap-10">
			<li
				class="flex items-center gap-3 text-gray-500 cursor-pointer hover:text-black"
			>
				<img src="/cart.svg" alt="Cart" />
				<b>1205 руб</b>
			</li>
			<li
				class="flex items-center gap-3 text-gray-500 cursor-pointer hover:text-black"
			>
				<img src="/heart.svg" alt="Cart" />
				<b>Избранное</b>
			</li>
			<li
				class="flex items-center gap-3 text-gray-500 cursor-pointer hover:text-black"
			>
				<img src="/profile.svg" alt="Cart" />
				<b>Профиль</b>
			</li>
		</ul>
	</header>
</template>
