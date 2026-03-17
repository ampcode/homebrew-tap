class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773749322-g9e8814"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773749322-g9e8814/amp-darwin-arm64"
      sha256 "7b7ea3de90b71ce7b02f92780dcf6229d18102337fac7d2d57a348741ba739c4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773749322-g9e8814/amp-darwin-x64"
      sha256 "647b0585b8bba1827d8eabd0aa0167bc1c048cbf6e0941f810cdaf92ec327db5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773749322-g9e8814/amp-linux-arm64"
      sha256 "97eebb1321f4b774b075d445eea103a37dcd598cd35e3bfd5fbe54dc3fb6fdf6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773749322-g9e8814/amp-linux-x64"
      sha256 "80554693fa7532492e7a33ac8f9bbc1f2d93e2f6c20472f50155dac70e28d130"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
