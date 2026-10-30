class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793376030-g45d45f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793376030-g45d45f/amp-darwin-arm64"
      sha256 "484ea73d698773058009138ab4d2cb9fe043ed7335b04d25d5faf4444963e5cf"
    else
      url "https://static.ampcode.com/cli/0.0.1793376030-g45d45f/amp-darwin-x64"
      sha256 "96015b0594f59a644a6c2b9660a58524a9c66f90117abc74723ee00bee5fc8c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793376030-g45d45f/amp-linux-arm64"
      sha256 "107ad54e7111fe16e08c9d2c32d0a159dd9bb9f14f98b66313d152328c727380"
    else
      url "https://static.ampcode.com/cli/0.0.1793376030-g45d45f/amp-linux-x64"
      sha256 "307697363cf9ea5ad85c1fbc07cca0fd6ff0c379a792babf3a8aa3e29988429a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
