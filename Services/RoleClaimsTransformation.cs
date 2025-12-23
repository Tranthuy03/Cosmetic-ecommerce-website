using Microsoft.AspNetCore.Authentication;
using System.Security.Claims;

namespace HairCareStore.Services
{
    public class RoleClaimsTransformation : IClaimsTransformation
    {
        public Task<ClaimsPrincipal> TransformAsync(ClaimsPrincipal principal)
        {
            var identity = principal.Identity as ClaimsIdentity;
            if (identity == null || !identity.IsAuthenticated)
                return Task.FromResult(principal);

            // Nếu đã có role rồi thì bỏ qua
            if (identity.HasClaim(c => c.Type == ClaimTypes.Role))
                return Task.FromResult(principal);

            var roleId = identity.FindFirst("RoleId")?.Value;

            if (roleId == "1")
                identity.AddClaim(new Claim(ClaimTypes.Role, "Admin"));

            if (roleId == "2")
                identity.AddClaim(new Claim(ClaimTypes.Role, "Manager"));

            if (roleId == "3")
                identity.AddClaim(new Claim(ClaimTypes.Role, "User"));

            return Task.FromResult(principal);
        }
    }
}
