class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777093124-g97dde0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777093124-g97dde0/amp-darwin-arm64"
      sha256 "1aaaa68aecb4b4d0258669936079e5b8f7e7db6062d2497a4c65b27d3d4950de"
    else
      url "https://static.ampcode.com/cli/0.0.1777093124-g97dde0/amp-darwin-x64"
      sha256 "3f0fb8b9771c5f53735557752f0f928076e28575afc4abebde626bdc3f28514c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777093124-g97dde0/amp-linux-arm64"
      sha256 "5e0345c6f8174b1d8b4dbc6a3027a5b8252d619805171ad2b936432fee9e641f"
    else
      url "https://static.ampcode.com/cli/0.0.1777093124-g97dde0/amp-linux-x64"
      sha256 "4f7dd38ded6c6d50cf415dd8779bfc90a8bcc0f43722d5f2a6078dce836341ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
