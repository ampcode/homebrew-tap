class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779567279-g6cae00"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779567279-g6cae00/amp-darwin-arm64"
      sha256 "ce5d5f6ec9ac900f7c5d3a8152f735e2bd9bdebf63fe6ca76c72d194f885207c"
    else
      url "https://static.ampcode.com/cli/0.0.1779567279-g6cae00/amp-darwin-x64"
      sha256 "676f385e7d5387ec690de5580261eb60cbf67f5978430eb8caf06d182abc94a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779567279-g6cae00/amp-linux-arm64"
      sha256 "0ef75b525af4da28fb4963684ad1cb0721ef978f94f1a8ec352d1a36993322b1"
    else
      url "https://static.ampcode.com/cli/0.0.1779567279-g6cae00/amp-linux-x64"
      sha256 "9e3ff2465430398b3fbb0c44b7991c84507021fe28b819655108eda41564e0ac"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
