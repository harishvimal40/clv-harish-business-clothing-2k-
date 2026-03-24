import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
  const isAuthRoute = request.nextUrl.pathname.startsWith('/account');
  const isApiRoute = request.nextUrl.pathname.startsWith('/api');
  const _ssrPublicRsc = request.nextUrl.pathname.includes('/_next');

  // Hardcoded mock check for "login" state in cookies.
  // In a real app with next-auth, you check the session token here.
  const isAthenticated = request.cookies.has('rayan_vip_session');

  if (!isAthenticated && !isAuthRoute && !isApiRoute && !_ssrPublicRsc) {
    // If not logged in, force them to the account member page.
    return NextResponse.redirect(new URL('/account', request.url));
  }

  return NextResponse.next();
}

export const config = {
  matcher: ['/((?!_next/static|_next/image|favicon.ico|noise.png|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)'],
};
