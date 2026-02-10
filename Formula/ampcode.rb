class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770740364-g62451b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770740364-g62451b/amp-darwin-arm64"
      sha256 "501e440f8c9f6b21168b320ff1f6850e11e1b25a0c25713ca7b781a60af59778"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770740364-g62451b/amp-darwin-x64"
      sha256 "ee85faa94106ceff961c36ae124228aa5a19a0925f54d0cc097e86b2ce766256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770740364-g62451b/amp-linux-arm64"
      sha256 "b4caf8c996dd124e9ba55ca3e39bc570b0c5c9a042b0014475b17a5e1db0f753"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770740364-g62451b/amp-linux-x64"
      sha256 "b5889d41482e82094e9cee90bb738d3fca6a00224b68a5c10f7f0e2cc6fe3764"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
