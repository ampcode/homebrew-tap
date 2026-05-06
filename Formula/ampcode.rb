class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778084963-gfd096d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778084963-gfd096d/amp-darwin-arm64"
      sha256 "35e0b2876fd0f37012fb9b55a24d968c170858a5d778e2f4270f9f59f39b07c9"
    else
      url "https://static.ampcode.com/cli/0.0.1778084963-gfd096d/amp-darwin-x64"
      sha256 "40e400ce1b90def8248f0013ca591d159a2a61429fe9d67265c4c92bb7201973"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778084963-gfd096d/amp-linux-arm64"
      sha256 "43f26cbb20d132be79b1d543ea6284ae1842e8a104209c020735e79cf8fa4649"
    else
      url "https://static.ampcode.com/cli/0.0.1778084963-gfd096d/amp-linux-x64"
      sha256 "2fe5a575217b24c3899b8b52671d219febe1674dda98bacffba4a317e8aa258b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
