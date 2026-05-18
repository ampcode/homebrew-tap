class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779099005-g16da7b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779099005-g16da7b/amp-darwin-arm64"
      sha256 "66e92eb45e5638d4b196c9dab99244fc17fe5124a2fb9b8045fd90ec240e4a41"
    else
      url "https://static.ampcode.com/cli/0.0.1779099005-g16da7b/amp-darwin-x64"
      sha256 "adb3c76c32683aa4354eaadc56b0b4ece27969e45b442f135321c8d628119223"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779099005-g16da7b/amp-linux-arm64"
      sha256 "76d1c5664c01b4df51dceb34392ed92010af0c1d7a0b8beb0efbaef25f042396"
    else
      url "https://static.ampcode.com/cli/0.0.1779099005-g16da7b/amp-linux-x64"
      sha256 "480bfd7f3c44ebbd441607c69546bd94f14c43675f8c178590398a9c75a7069d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
