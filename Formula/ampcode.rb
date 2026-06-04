class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780614987-gb74f73"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780614987-gb74f73/amp-darwin-arm64"
      sha256 "b157b9c579e85401ae0828ce484699a2be5418f7ba2222560df3a8283cab96e0"
    else
      url "https://static.ampcode.com/cli/0.0.1780614987-gb74f73/amp-darwin-x64"
      sha256 "9c76a4927c57b7beca7d32cb9e5635f18fa6b43fbf60be8b2b4c2ee1775e0377"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780614987-gb74f73/amp-linux-arm64"
      sha256 "bcae18083b5687257be9614b8b0fdcb769806cbe72e94c5efbd2fd1a15ee777e"
    else
      url "https://static.ampcode.com/cli/0.0.1780614987-gb74f73/amp-linux-x64"
      sha256 "c36dd7ecb59817e191161304eecc94022b79a87dde03211979914ccf16690410"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
