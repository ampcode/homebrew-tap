class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770394170-g80ade2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770394170-g80ade2/amp-darwin-arm64"
      sha256 "6fe9a24f5b4ce6203a0e23c499af2c6a424cac714eca9493185fa0a14719e658"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770394170-g80ade2/amp-darwin-x64"
      sha256 "a8e27bb614c40d3d2429ec6ce07d8c47196ee5b5e67f6b00aba4a045f6732197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770394170-g80ade2/amp-linux-arm64"
      sha256 "7f906d3a3b3e69064f52b7a20e18c74d06949aa407d611ce54cf4fc1e982a769"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770394170-g80ade2/amp-linux-x64"
      sha256 "744b2cece4f87e9e481d64e5cb7b91f8e248fc152ec76dc8185b05fefe2d769e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
