class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780739438-g923ae4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780739438-g923ae4/amp-darwin-arm64"
      sha256 "a3e8f620f75080ce38ff4bc4ea22ab0c43c4a69fd6f8fe95482783b3bdd3da44"
    else
      url "https://static.ampcode.com/cli/0.0.1780739438-g923ae4/amp-darwin-x64"
      sha256 "2dbc5fc66fb37384eb78e3d9b912a6cc015e40d3c74ef62f09591ee40e0e0437"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780739438-g923ae4/amp-linux-arm64"
      sha256 "e66643df236f8496f78f80ccba2ff5c0e782b7cf2f222b90ccf263a97e8e401f"
    else
      url "https://static.ampcode.com/cli/0.0.1780739438-g923ae4/amp-linux-x64"
      sha256 "4903235bd835963f5c828ca86138f5b7a62d6e54b0a7c7ccf040e87e8514b4bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
