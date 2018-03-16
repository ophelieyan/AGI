namespace AGI
{
    internal class CreatedResult : IActionResult
    {
        private string param;
        private string v;

        public CreatedResult(string v, string param)
        {
            this.v = v;
            this.param = param;
        }
    }
}