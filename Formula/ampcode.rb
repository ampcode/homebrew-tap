class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789390780-g75f8bb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789390780-g75f8bb/amp-darwin-arm64"
      sha256 "a674510a242eef296e6744c8da5757a02cdb4d372d8952c92547b8775fe616b5"
    else
      url "https://static.ampcode.com/cli/0.0.1789390780-g75f8bb/amp-darwin-x64"
      sha256 "7fb98424fbf425a32a1f1d239b2fe2b60c2cebd6f98191edbe0fb7719654a395"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789390780-g75f8bb/amp-linux-arm64"
      sha256 "d90bdf9255d6d35ef8cb7ceacc72b6c9dbd26454b509522feac659fdfa6ce899"
    else
      url "https://static.ampcode.com/cli/0.0.1789390780-g75f8bb/amp-linux-x64"
      sha256 "812dda0391e03e0742906d0cffba89424d54138d2b6c4930a4352236500cda2d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
