class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787515258-g1cbe6b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787515258-g1cbe6b/amp-darwin-arm64"
      sha256 "846223f8860a0c4a51b04e17a647a86967492e69b7463854114829e6c45de9fe"
    else
      url "https://static.ampcode.com/cli/0.0.1787515258-g1cbe6b/amp-darwin-x64"
      sha256 "9dddcd82f3bf055c6f8a272dae56873202a7eb2e1f5c182e716b2d03cea61822"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787515258-g1cbe6b/amp-linux-arm64"
      sha256 "ab33acb4b9173bbe6e3cf5a638a1617c10f56e5403e2562ffb56db49c61e5565"
    else
      url "https://static.ampcode.com/cli/0.0.1787515258-g1cbe6b/amp-linux-x64"
      sha256 "c3404f99aa404472fae2444dd8733db211b9dc3948652f14fc883befca0796d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
