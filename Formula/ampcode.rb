class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793275344-g17bf52"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793275344-g17bf52/amp-darwin-arm64"
      sha256 "b3a0ee8f548bbc3c33970fa448338161ea34eea154e034d431253e920f08c580"
    else
      url "https://static.ampcode.com/cli/0.0.1793275344-g17bf52/amp-darwin-x64"
      sha256 "6e8b05d498d761a2f5308e5cbb0aba66441bbd09673bc03dc3b05efd83771d14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793275344-g17bf52/amp-linux-arm64"
      sha256 "8237a6d6bde7135744f006e326d730d61ea10e91e43391c5b33973fe82c04fed"
    else
      url "https://static.ampcode.com/cli/0.0.1793275344-g17bf52/amp-linux-x64"
      sha256 "2cce4e08cbabfc206331ff475cc843f7100ffca26718a9193ffc4d9a7dee72f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
