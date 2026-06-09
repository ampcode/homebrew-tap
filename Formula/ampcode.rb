class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780988125-g495d96"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780988125-g495d96/amp-darwin-arm64"
      sha256 "e1815d2097650c6501c2f1a6d7115c2f344007dd35c601ef13e921d4a8d2ac03"
    else
      url "https://static.ampcode.com/cli/0.0.1780988125-g495d96/amp-darwin-x64"
      sha256 "b3370fcf2a27bc145b851cc76c74e7c2de0b66e063f8bb025d9205c640f3f6d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780988125-g495d96/amp-linux-arm64"
      sha256 "4075b2bd868f21bea715300c1e8069f9b61635fdd4ecb17ae94363e2a57cbb73"
    else
      url "https://static.ampcode.com/cli/0.0.1780988125-g495d96/amp-linux-x64"
      sha256 "4a6cfaa3ca4235c1607275bbee1f0eed36f7e826aa4f30417f5e9d300b64faf7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
