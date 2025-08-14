export function createHeader() {
  return `
    <header class="fixed top-0 left-0 right-0 bg-white shadow-lg z-50 transition-all duration-300" id="header">
      <div class="container mx-auto px-6 py-4">
        <div class="flex items-center justify-between">
          <!-- Logo -->
          <div class="flex items-center">
            <span class="text-2xl font-bold text-gray-900">catdog</span>
          </div>
          
          <!-- Navigation -->
          <nav class="hidden md:flex items-center space-x-8">
            <a href="#home" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Home</a>
            <a href="#services" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Services</a>
            <a href="#about" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">About</a>
            <a href="#testimonials" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Testimonials</a>
            <a href="#contact" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Contact</a>
          </nav>
          
          <!-- Cart and Menu Button -->
          <div class="flex items-center space-x-4">
            <!-- Cart Button -->
            <button class="bg-black text-white px-4 py-2 rounded hover:bg-gray-800 transition-colors duration-300 flex items-center space-x-2">
              <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m0 0L7 13m0 0l-1.5 6M7 13l-1.5-6m0 0h15.5M17 13v6a2 2 0 01-2 2H9a2 2 0 01-2-2v-6"></path>
              </svg>
              <span>CART (0)</span>
            </button>
            
            <!-- Mobile Menu Button -->
            <button class="md:hidden bg-yellow-400 p-2 rounded" id="mobile-menu-btn">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
              </svg>
            </button>
          </div>
        </div>
        
        <!-- Mobile Navigation -->
        <nav class="md:hidden mt-4 pb-4 border-t border-gray-200 hidden" id="mobile-menu">
          <div class="flex flex-col space-y-4 pt-4">
            <a href="#home" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Home</a>
            <a href="#services" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Services</a>
            <a href="#about" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">About</a>
            <a href="#testimonials" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Testimonials</a>
            <a href="#contact" class="text-gray-700 hover:text-purple-600 transition-colors duration-300 nav-link">Contact</a>
          </div>
        </nav>
      </div>
    </header>
  `;
}