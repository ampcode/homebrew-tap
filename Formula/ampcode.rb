class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783357098-gfadc49"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783357098-gfadc49/amp-darwin-arm64"
      sha256 "d62db9516141bf8db5b2a0fa093071e6caccfbedcea34e2e08c4acfa4e8da9e9"
    else
      url "https://static.ampcode.com/cli/0.0.1783357098-gfadc49/amp-darwin-x64"
      sha256 "cee47cf6a7fab6b2556af3815f64e0f26294ee05ca6d473183d5a8ace1f29e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783357098-gfadc49/amp-linux-arm64"
      sha256 "aa105aaf3ff9322459be98d2f9de9ea7100456411b06884ec549bb873528167e"
    else
      url "https://static.ampcode.com/cli/0.0.1783357098-gfadc49/amp-linux-x64"
      sha256 "735008737028590e77590311f96a1a195d77a21924ce6d40402944061405b2b2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
