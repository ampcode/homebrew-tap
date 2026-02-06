class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770366910-g1852ef"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770366910-g1852ef/amp-darwin-arm64"
      sha256 "24fd0af52dacd117f446e3df5e184c3362ac8d86a5cc4215825ed5726283f25a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770366910-g1852ef/amp-darwin-x64"
      sha256 "d1227629bfdd27e40077e461877b4c35de9fd2ff3cc635a68819a6b467336e65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770366910-g1852ef/amp-linux-arm64"
      sha256 "3010b0e79485519e2f85f362eaf979fcbffd87aa9d08040cd0e5bfa0d22318d6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770366910-g1852ef/amp-linux-x64"
      sha256 "fd9074bd29ed13da08de593148a2e0838805022dc0411de4afed0020e55af7d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
