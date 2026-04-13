<script lang="ts">
    export let label: string
    export let checked = false
    export let onchange = () => { checked = !checked; console.log(checked)}
    const id = `switch-${Math.round(Math.random() * 1000000)}`
</script>

<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" {id} {checked} onchange={onchange}>
  <label class="form-check-label" for={id}>{label}</label>
</div>
