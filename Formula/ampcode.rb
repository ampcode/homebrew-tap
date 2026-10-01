class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790887360-g98f23e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790887360-g98f23e/amp-darwin-arm64"
      sha256 "0ba80c3eb63577ef9360521aa752ac3ab50ba2ba95464c8451162d14d6bd8454"
    else
      url "https://static.ampcode.com/cli/0.0.1790887360-g98f23e/amp-darwin-x64"
      sha256 "5a2441bcb34be0394f58dbe6a89c8aece4390d030c6cd030afdf8e432db85db0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790887360-g98f23e/amp-linux-arm64"
      sha256 "98145ce8d1c6f84fa07e8c75b6f9419df037e715b04af0a8e9c3ef895e86e424"
    else
      url "https://static.ampcode.com/cli/0.0.1790887360-g98f23e/amp-linux-x64"
      sha256 "03fc5920c4bceb1e08a7e7d8c93ddf06d8c7945d60deb48f4905383a3862741c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
