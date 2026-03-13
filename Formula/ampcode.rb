class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773403446-gc7ef51"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773403446-gc7ef51/amp-darwin-arm64"
      sha256 "c1e058ccc98f6ee8c9122c9e56318a1d2e5cf4b94d0ce8db34923805342912fc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773403446-gc7ef51/amp-darwin-x64"
      sha256 "72d7c8c0cf65298ccf9e5a6718d7b00fbbc96bf48a92c9532666c8b01ea6f26d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773403446-gc7ef51/amp-linux-arm64"
      sha256 "7a877d93fb368b41165fc59044c31590dcf9104407dc492ba5d9306af785b1c7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773403446-gc7ef51/amp-linux-x64"
      sha256 "41de7e81060785792bb038a5f4be272cae3d8034fdc87bd890d2699ae637f655"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
