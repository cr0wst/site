<div
	class="w-8 aspect-square flex items-center justify-center transform transition duration-300 ease-in-out hover:scale-125 hover:rotate-6 hover:shadow-2xl">
	<a href="{link}" class="w-full h-full overflow-hidden">
		<svelte:component this={svg} />
	</a>
</div>

<script lang="ts">
	export let link = '';
	export let svg: any;
</script>