---
title: Заголовок
description: Краткое описание проекта
---

<script>
    import { onMount } from 'svelte'
    import Helper from '$lib/components/Helper.svelte' 
    import Footnote from '$lib/components/Footnote.svelte' 
    import Sup from '$lib/components/Sup.svelte'     
    import Footer from '$lib/components/Footer.svelte'     
    import Switch from '$lib/components/Switch.svelte'         
    import draw from './draw.js'

    export let data

    const { title, description, banner, image } = data

    let hideOptional = false
   
    onMount(() => {
        draw(div)
    })

    let div 

</script>

<Helper {title} {description} {banner} {image} />

Напишите что-нибудь.

<div class="timeline" bind:this={div}></div>

Напишите что-нибудь ещё.
