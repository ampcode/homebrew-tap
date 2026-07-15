class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784132895-gde66cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784132895-gde66cb/amp-darwin-arm64"
      sha256 "957b776e75398d9d8f59804d191b23dd2de4dd45f2fb6dea9f4f6130cdc4eac5"
    else
      url "https://static.ampcode.com/cli/0.0.1784132895-gde66cb/amp-darwin-x64"
      sha256 "55c29c993ead137b23287687da6382cfe3c31961b9ca33d952ddaac44695af7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784132895-gde66cb/amp-linux-arm64"
      sha256 "f0dfd9c6fbb83e6369609856d602efb327f51f226fc29a24a56d73f820891b4f"
    else
      url "https://static.ampcode.com/cli/0.0.1784132895-gde66cb/amp-linux-x64"
      sha256 "28c337fda4c333be76869d13d43460a913a9ebcc5c9d9f4c05e9998f9d582ea3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
